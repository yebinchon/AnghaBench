
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int page_table_lock; } ;
typedef int spinlock_t ;


 int * __pte_lockptr (struct page*) ;
 int spin_lock_nest_lock (int *,int *) ;

__attribute__((used)) static spinlock_t *xen_pte_lock(struct page *page, struct mm_struct *mm)
{
 spinlock_t *ptl = ((void*)0);






 return ptl;
}
