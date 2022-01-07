
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {unsigned long flags; int lru; } ;
struct TYPE_2__ {int list_lock; int pgtable_list; scalar_t__ has_pgste; scalar_t__ noexec; } ;
struct mm_struct {TYPE_1__ context; } ;


 int FRAG_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int __free_page (struct page*) ;
 int __pa (unsigned long*) ;
 int list_del (int *) ;
 int list_move (int *,int *) ;
 struct page* pfn_to_page (int) ;
 int pgtable_page_dtor (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void page_table_free(struct mm_struct *mm, unsigned long *table)
{
 struct page *page;
 unsigned long bits;

 bits = (mm->context.noexec || mm->context.has_pgste) ? 3UL : 1UL;
 bits <<= (__pa(table) & (PAGE_SIZE - 1)) / 256 / sizeof(unsigned long);
 page = pfn_to_page(__pa(table) >> PAGE_SHIFT);
 spin_lock(&mm->context.list_lock);
 page->flags ^= bits;
 if (page->flags & FRAG_MASK) {

  list_move(&page->lru, &mm->context.pgtable_list);
  page = ((void*)0);
 } else

  list_del(&page->lru);
 spin_unlock(&mm->context.list_lock);
 if (page) {
  pgtable_page_dtor(page);
  __free_page(page);
 }
}
