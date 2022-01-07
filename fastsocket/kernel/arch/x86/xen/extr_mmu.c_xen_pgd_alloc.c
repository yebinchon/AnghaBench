
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {unsigned long private; } ;
struct mm_struct {int * pgd; } ;
typedef int pgd_t ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PagePinned (struct page*) ;
 int VSYSCALL_START ;
 int _PAGE_TABLE ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_page (int) ;
 int __pa (int ) ;
 int __pgd (int) ;
 int level3_user_vsyscall ;
 size_t pgd_index (int ) ;
 struct page* virt_to_page (int *) ;
 int * xen_get_user_pgd (int *) ;

__attribute__((used)) static int xen_pgd_alloc(struct mm_struct *mm)
{
 pgd_t *pgd = mm->pgd;
 int ret = 0;

 BUG_ON(PagePinned(virt_to_page(pgd)));
 return ret;
}
