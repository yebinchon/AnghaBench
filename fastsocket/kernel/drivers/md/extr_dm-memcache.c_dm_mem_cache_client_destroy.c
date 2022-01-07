
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_mem_cache_client {scalar_t__ free_pages; scalar_t__ total_pages; int objs_pool; int free_list; } ;


 int BUG_ON (int) ;
 int free_cache_pages (int ) ;
 int kfree (struct dm_mem_cache_client*) ;
 int mempool_destroy (int ) ;

void dm_mem_cache_client_destroy(struct dm_mem_cache_client *cl)
{
 BUG_ON(cl->free_pages != cl->total_pages);
 free_cache_pages(cl->free_list);
 mempool_destroy(cl->objs_pool);
 kfree(cl);
}
