
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ opt_pid ;
 int page_flag_name (int ) ;
 int printf (char*,unsigned long,...) ;

__attribute__((used)) static void show_page(unsigned long voffset,
        unsigned long offset, uint64_t flags)
{
 if (opt_pid)
  printf("%lx\t", voffset);
 printf("%lx\t%s\n", offset, page_flag_name(flags));
}
