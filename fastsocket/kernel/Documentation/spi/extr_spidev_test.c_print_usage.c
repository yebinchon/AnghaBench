
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char const*) ;
 int puts (char*) ;

__attribute__((used)) static void print_usage(const char *prog)
{
 printf("Usage: %s [-DsbdlHOLC3]\n", prog);
 puts("  -D --device   device to use (default /dev/spidev1.1)\n"
      "  -s --speed    max speed (Hz)\n"
      "  -d --delay    delay (usec)\n"
      "  -b --bpw      bits per word \n"
      "  -l --loop     loopback\n"
      "  -H --cpha     clock phase\n"
      "  -O --cpol     clock polarity\n"
      "  -L --lsb      least significant bit first\n"
      "  -C --cs-high  chip select active high\n"
      "  -3 --3wire    SI/SO signals shared\n");
 exit(1);
}
