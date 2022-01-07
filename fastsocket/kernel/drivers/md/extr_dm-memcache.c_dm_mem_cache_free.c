
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_mem_cache_object {int dummy; } ;
struct dm_mem_cache_client {int objs_pool; } ;


 int free_chunks (struct dm_mem_cache_client*,struct dm_mem_cache_object*) ;
 int mempool_free (struct dm_mem_cache_object*,int ) ;

void dm_mem_cache_free(struct dm_mem_cache_client *cl,
         struct dm_mem_cache_object *obj)
{
 free_chunks(cl, obj);
 mempool_free(obj, cl->objs_pool);
}
