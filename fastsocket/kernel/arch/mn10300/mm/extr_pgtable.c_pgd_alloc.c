
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 int GFP_KERNEL ;
 int pgd_ctor ;
 int * quicklist_alloc (int ,int ,int ) ;

pgd_t *pgd_alloc(struct mm_struct *mm)
{
 return quicklist_alloc(0, GFP_KERNEL, pgd_ctor);
}
