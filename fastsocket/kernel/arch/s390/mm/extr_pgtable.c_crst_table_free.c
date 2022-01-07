
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int lru; } ;
struct TYPE_2__ {int list_lock; } ;
struct mm_struct {TYPE_1__ context; } ;


 int ALLOC_ORDER ;
 int free_pages (unsigned long,int ) ;
 unsigned long* get_shadow_table (unsigned long*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct page* virt_to_page (unsigned long*) ;

void crst_table_free(struct mm_struct *mm, unsigned long *table)
{
 unsigned long *shadow = get_shadow_table(table);
 struct page *page = virt_to_page(table);

 spin_lock(&mm->context.list_lock);
 list_del(&page->lru);
 spin_unlock(&mm->context.list_lock);
 if (shadow)
  free_pages((unsigned long) shadow, ALLOC_ORDER);
 free_pages((unsigned long) table, ALLOC_ORDER);
}
