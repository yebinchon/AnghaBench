
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; int member_1; char member_3; int member_2; } ;


 int SPI_3WIRE ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_LOOP ;
 int SPI_LSB_FIRST ;
 int SPI_NO_CS ;
 int SPI_READY ;
 void* atoi (int ) ;
 void* bits ;
 void* delay ;
 int device ;
 int getopt_long (int,char**,char*,struct option const*,int *) ;
 int mode ;
 int optarg ;
 int print_usage (char*) ;
 void* speed ;

__attribute__((used)) static void parse_opts(int argc, char *argv[])
{
 while (1) {
  static const struct option lopts[] = {
   { "device", 1, 0, 'D' },
   { "speed", 1, 0, 's' },
   { "delay", 1, 0, 'd' },
   { "bpw", 1, 0, 'b' },
   { "loop", 0, 0, 'l' },
   { "cpha", 0, 0, 'H' },
   { "cpol", 0, 0, 'O' },
   { "lsb", 0, 0, 'L' },
   { "cs-high", 0, 0, 'C' },
   { "3wire", 0, 0, '3' },
   { "no-cs", 0, 0, 'N' },
   { "ready", 0, 0, 'R' },
   { ((void*)0), 0, 0, 0 },
  };
  int c;

  c = getopt_long(argc, argv, "D:s:d:b:lHOLC3NR", lopts, ((void*)0));

  if (c == -1)
   break;

  switch (c) {
  case 'D':
   device = optarg;
   break;
  case 's':
   speed = atoi(optarg);
   break;
  case 'd':
   delay = atoi(optarg);
   break;
  case 'b':
   bits = atoi(optarg);
   break;
  case 'l':
   mode |= SPI_LOOP;
   break;
  case 'H':
   mode |= SPI_CPHA;
   break;
  case 'O':
   mode |= SPI_CPOL;
   break;
  case 'L':
   mode |= SPI_LSB_FIRST;
   break;
  case 'C':
   mode |= SPI_CS_HIGH;
   break;
  case '3':
   mode |= SPI_3WIRE;
   break;
  case 'N':
   mode |= SPI_NO_CS;
   break;
  case 'R':
   mode |= SPI_READY;
   break;
  default:
   print_usage(argv[0]);
   break;
  }
 }
}
