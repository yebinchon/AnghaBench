
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_mem_cache_object {int dummy; } ;
struct dm_mem_cache_client {unsigned int chunks; unsigned int pages_per_chunk; unsigned int free_pages; int objs_pool; int lock; } ;


 int ENOMEM ;
 struct dm_mem_cache_object* ERR_PTR (int) ;
 int GFP_NOIO ;
 int alloc_chunks (struct dm_mem_cache_client*,struct dm_mem_cache_object*) ;
 struct dm_mem_cache_object* mempool_alloc (int ,int ) ;
 int mempool_free (struct dm_mem_cache_object*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct dm_mem_cache_object *dm_mem_cache_alloc(struct dm_mem_cache_client *cl)
{
 int r = 0;
 unsigned pages = cl->chunks * cl->pages_per_chunk;
 unsigned long flags;
 struct dm_mem_cache_object *obj;

 obj = mempool_alloc(cl->objs_pool, GFP_NOIO);
 if (!obj)
  return ERR_PTR(-ENOMEM);

 spin_lock_irqsave(&cl->lock, flags);
 if (pages > cl->free_pages)
  r = -ENOMEM;
 else
  cl->free_pages -= pages;
 spin_unlock_irqrestore(&cl->lock, flags);

 if (r) {
  mempool_free(obj, cl->objs_pool);
  return ERR_PTR(r);
 }

 alloc_chunks(cl, obj);
 return obj;
}
