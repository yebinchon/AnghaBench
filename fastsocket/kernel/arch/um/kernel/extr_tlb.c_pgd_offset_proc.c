
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 int * pgd_offset (struct mm_struct*,unsigned long) ;

pgd_t *pgd_offset_proc(struct mm_struct *mm, unsigned long address)
{
 return pgd_offset(mm, address);
}
