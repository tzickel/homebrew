class Ipsumdump < Formula
  homepage "http://www.read.seas.harvard.edu/~kohler/ipsumdump/"
  url "http://www.read.seas.harvard.edu/~kohler/ipsumdump/ipsumdump-1.85.tar.gz"
  sha1 "53b7be092d94c1b28817e1c6920bb70293eb60b3"
  head "https://github.com/kohler/ipsumdump.git"

  bottle do
    sha1 "ffc203830f18bef05ebf053967683e05aac3367b" => :yosemite
    sha1 "589c090e06857e09b3c4e3667f5eb7b050ff747d" => :mavericks
    sha1 "b65adb35b7c8d36ee1ff9c187a84331ea93fad9c" => :mountain_lion
  end

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "#{bin}/ipsumdump", "-c", "-r", "#{test_fixtures("test.pcap")}"
  end
end
