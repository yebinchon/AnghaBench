
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {unsigned long brk; } ;


 scalar_t__ randomize_range (unsigned long,unsigned long,int ) ;

unsigned long arch_randomize_brk(struct mm_struct *mm)
{
 unsigned long range_end = mm->brk + 0x02000000;
 return randomize_range(mm->brk, range_end, 0) ? : mm->brk;
}
