
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {struct page_list* next; } ;
struct dm_mem_cache_client {unsigned int chunks; unsigned int pages_per_chunk; unsigned int free_pages; unsigned int total_pages; unsigned int objects; int objs_pool; int lock; struct page_list* free_list; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_NOIO ;
 struct page_list* alloc_cache_pages (unsigned int) ;
 int mempool_resize (int ,unsigned int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int dm_mem_cache_grow(struct dm_mem_cache_client *cl, unsigned objects)
{
 unsigned pages = objects * cl->chunks * cl->pages_per_chunk;
 struct page_list *pl, *last;

 BUG_ON(!pages);
 pl = alloc_cache_pages(pages);
 if (!pl)
  return -ENOMEM;

 last = pl;
 while (last->next)
  last = last->next;

 spin_lock_irq(&cl->lock);
 last->next = cl->free_list;
 cl->free_list = pl;
 cl->free_pages += pages;
 cl->total_pages += pages;
 cl->objects += objects;
 spin_unlock_irq(&cl->lock);

 mempool_resize(cl->objs_pool, cl->objects, GFP_NOIO);
 return 0;
}
