
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int describe_flags (int ) ;
 int exit (int) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int getpagesize () ;
 int opt_hwpoison ;
 int opt_list ;
 int opt_no_summary ;
 scalar_t__ opt_pid ;
 int opt_raw ;
 int opt_unpoison ;
 int optarg ;
 int opts ;
 int page_size ;
 int parse_addr_range (int ) ;
 int parse_bits_mask (int ) ;
 int parse_file (int ) ;
 int parse_pid (int ) ;
 int prepare_hwpoison_fd () ;
 int printf (char*) ;
 int show_page_range (int ,int ,int ) ;
 int show_summary () ;
 int usage () ;
 int walk_addr_ranges () ;

int main(int argc, char *argv[])
{
 int c;

 page_size = getpagesize();

 while ((c = getopt_long(argc, argv,
    "rp:f:a:b:d:lLNXxh", opts, ((void*)0))) != -1) {
  switch (c) {
  case 'r':
   opt_raw = 1;
   break;
  case 'p':
   parse_pid(optarg);
   break;
  case 'f':
   parse_file(optarg);
   break;
  case 'a':
   parse_addr_range(optarg);
   break;
  case 'b':
   parse_bits_mask(optarg);
   break;
  case 'd':
   describe_flags(optarg);
   exit(0);
  case 'l':
   opt_list = 1;
   break;
  case 'L':
   opt_list = 2;
   break;
  case 'N':
   opt_no_summary = 1;
   break;
  case 'X':
   opt_hwpoison = 1;
   prepare_hwpoison_fd();
   break;
  case 'x':
   opt_unpoison = 1;
   prepare_hwpoison_fd();
   break;
  case 'h':
   usage();
   exit(0);
  default:
   usage();
   exit(1);
  }
 }

 if (opt_list && opt_pid)
  printf("voffset\t");
 if (opt_list == 1)
  printf("offset\tlen\tflags\n");
 if (opt_list == 2)
  printf("offset\tflags\n");

 walk_addr_ranges();

 if (opt_list == 1)
  show_page_range(0, 0, 0);

 if (opt_no_summary)
  return 0;

 if (opt_list)
  printf("\n\n");

 show_summary();

 return 0;
}
