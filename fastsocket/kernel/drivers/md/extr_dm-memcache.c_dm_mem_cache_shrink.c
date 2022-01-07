
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {struct page_list* next; } ;
struct dm_mem_cache_client {unsigned int chunks; unsigned int pages_per_chunk; unsigned int free_pages; unsigned int total_pages; unsigned int objects; int objs_pool; int lock; struct page_list* free_list; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_NOIO ;
 int free_cache_pages (struct page_list*) ;
 int mempool_resize (int ,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int dm_mem_cache_shrink(struct dm_mem_cache_client *cl, unsigned objects)
{
 int r;
 unsigned pages = objects * cl->chunks * cl->pages_per_chunk, p = pages;
 unsigned long flags;
 struct page_list *last = ((void*)0), *pl, *pos;

 BUG_ON(!pages);

 spin_lock_irqsave(&cl->lock, flags);
 pl = pos = cl->free_list;
 while (p-- && pos->next) {
  last = pos;
  pos = pos->next;
 }

 if (++p)
  r = -ENOMEM;
 else {
  r = 0;
  cl->free_list = pos;
  cl->free_pages -= pages;
  cl->total_pages -= pages;
  cl->objects -= objects;
  last->next = ((void*)0);
 }
 spin_unlock_irqrestore(&cl->lock, flags);

 if (!r) {
  free_cache_pages(pl);
  mempool_resize(cl->objs_pool, cl->objects, GFP_NOIO);
 }

 return r;
}
