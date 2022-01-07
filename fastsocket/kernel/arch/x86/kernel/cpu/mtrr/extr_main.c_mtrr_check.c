
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int dump_stack () ;
 int pr_debug (char*,unsigned long,unsigned long) ;
 int pr_warning (char*) ;

__attribute__((used)) static int mtrr_check(unsigned long base, unsigned long size)
{
 if ((base & (PAGE_SIZE - 1)) || (size & (PAGE_SIZE - 1))) {
  pr_warning("mtrr: size and base must be multiples of 4 kiB\n");
  pr_debug("mtrr: size: 0x%lx  base: 0x%lx\n", size, base);
  dump_stack();
  return -1;
 }
 return 0;
}
