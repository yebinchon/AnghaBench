
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {unsigned long brk; } ;


 unsigned long PAGE_ALIGN (scalar_t__) ;
 scalar_t__ brk_rnd () ;

unsigned long arch_randomize_brk(struct mm_struct *mm)
{
 unsigned long ret = PAGE_ALIGN(mm->brk + brk_rnd());

 if (ret < mm->brk)
  return mm->brk;
 return ret;
}
