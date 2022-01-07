
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 int GFP_KERNEL ;
 scalar_t__ PAGE_SHIFT ;
 int PGDIR_ORDER ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,scalar_t__) ;
 scalar_t__ kzalloc (int,int) ;

pgd_t *pgd_alloc(struct mm_struct *mm)
{
 pgd_t *ret;



 ret = (pgd_t *)kzalloc(1 << PGDIR_ORDER, GFP_KERNEL);




 return ret;
}
