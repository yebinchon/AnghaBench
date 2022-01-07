
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_mem_cache_object {int dummy; } ;
struct dm_mem_cache_client {unsigned int objects; unsigned int chunks; unsigned int pages_per_chunk; unsigned int free_pages; unsigned int total_pages; int objs_pool; int lock; int free_list; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 struct dm_mem_cache_client* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int alloc_cache_pages (unsigned int) ;
 int kfree (struct dm_mem_cache_client*) ;
 struct dm_mem_cache_client* kzalloc (int,int ) ;
 int mempool_create_kmalloc_pool (unsigned int,unsigned int) ;
 int mempool_destroy (int ) ;
 int spin_lock_init (int *) ;

struct dm_mem_cache_client *
dm_mem_cache_client_create(unsigned objects, unsigned chunks,
      unsigned pages_per_chunk)
{
 unsigned total_pages = objects * chunks * pages_per_chunk;
 struct dm_mem_cache_client *client;

 BUG_ON(!total_pages);
 client = kzalloc(sizeof(*client), GFP_KERNEL);
 if (!client)
  return ERR_PTR(-ENOMEM);

 client->objs_pool = mempool_create_kmalloc_pool(objects,
    chunks * sizeof(struct dm_mem_cache_object));
 if (!client->objs_pool)
  goto err;

 client->free_list = alloc_cache_pages(total_pages);
 if (!client->free_list)
  goto err1;

 spin_lock_init(&client->lock);
 client->objects = objects;
 client->chunks = chunks;
 client->pages_per_chunk = pages_per_chunk;
 client->free_pages = client->total_pages = total_pages;
 return client;

err1:
 mempool_destroy(client->objs_pool);
err:
 kfree(client);
 return ERR_PTR(-ENOMEM);
}
