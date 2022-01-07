
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {int page; struct page_list* next; } ;


 int BUG_ON (int) ;
 int __free_page (int ) ;
 int kfree (struct page_list*) ;

__attribute__((used)) static void free_cache_pages(struct page_list *list)
{
 while (list) {
  struct page_list *pl = list;

  list = pl->next;
  BUG_ON(!pl->page);
  __free_page(pl->page);
  kfree(pl);
 }
}
