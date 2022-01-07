
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int lru; scalar_t__ index; } ;
struct TYPE_2__ {int list_lock; int crst_list; } ;
struct mm_struct {TYPE_1__ context; } ;


 int ALLOC_ORDER ;
 int GFP_KERNEL ;
 int __free_pages (struct page*,int ) ;
 struct page* alloc_pages (int ,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ page_to_phys (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

unsigned long *crst_table_alloc(struct mm_struct *mm, int noexec)
{
 struct page *page = alloc_pages(GFP_KERNEL, ALLOC_ORDER);

 if (!page)
  return ((void*)0);
 page->index = 0;
 if (noexec) {
  struct page *shadow = alloc_pages(GFP_KERNEL, ALLOC_ORDER);
  if (!shadow) {
   __free_pages(page, ALLOC_ORDER);
   return ((void*)0);
  }
  page->index = page_to_phys(shadow);
 }
 spin_lock(&mm->context.list_lock);
 list_add(&page->lru, &mm->context.crst_list);
 spin_unlock(&mm->context.list_lock);
 return (unsigned long *) page_to_phys(page);
}
