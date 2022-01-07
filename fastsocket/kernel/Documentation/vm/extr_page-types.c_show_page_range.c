
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ opt_pid ;
 int page_flag_name (scalar_t__) ;
 int printf (char*,unsigned long,...) ;

__attribute__((used)) static void show_page_range(unsigned long voffset,
       unsigned long offset, uint64_t flags)
{
 static uint64_t flags0;
 static unsigned long voff;
 static unsigned long index;
 static unsigned long count;

 if (flags == flags0 && offset == index + count &&
     (!opt_pid || voffset == voff + count)) {
  count++;
  return;
 }

 if (count) {
  if (opt_pid)
   printf("%lx\t", voff);
  printf("%lx\t%lx\t%s\n",
    index, count, page_flag_name(flags0));
 }

 flags0 = flags;
 index = offset;
 voff = voffset;
 count = 1;
}
