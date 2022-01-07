
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {struct page_list* next; struct page* page; } ;
struct page {int dummy; } ;


 int GFP_NOIO ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int free_cache_pages (struct page_list*) ;
 struct page_list* kmalloc (int,int ) ;

__attribute__((used)) static struct page_list *alloc_cache_pages(unsigned pages)
{
 struct page_list *pl, *ret = ((void*)0);
 struct page *page;

 while (pages--) {
  page = alloc_page(GFP_NOIO);
  if (!page)
   goto err;

  pl = kmalloc(sizeof(*pl), GFP_NOIO);
  if (!pl) {
   __free_page(page);
   goto err;
  }

  pl->page = page;
  pl->next = ret;
  ret = pl;
 }

 return ret;

err:
 free_cache_pages(ret);
 return ((void*)0);
}
