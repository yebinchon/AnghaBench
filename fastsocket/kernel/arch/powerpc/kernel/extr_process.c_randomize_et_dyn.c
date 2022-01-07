
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_ALIGN (scalar_t__) ;
 scalar_t__ brk_rnd () ;

unsigned long randomize_et_dyn(unsigned long base)
{
 unsigned long ret = PAGE_ALIGN(base + brk_rnd());

 if (ret < base)
  return base;

 return ret;
}
