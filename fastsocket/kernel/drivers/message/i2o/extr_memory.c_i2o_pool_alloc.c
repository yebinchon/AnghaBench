
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_pool {int name; int slab; int mempool; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SLAB_HWCACHE_ALIGN ;
 int kfree (int ) ;
 int kmalloc (scalar_t__,int ) ;
 int kmem_cache_create (int ,size_t,int ,int ,int *) ;
 int kmem_cache_destroy (int ) ;
 int mempool_create_slab_pool (int,int ) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

int i2o_pool_alloc(struct i2o_pool *pool, const char *name,
     size_t size, int min_nr)
{
 pool->name = kmalloc(strlen(name) + 1, GFP_KERNEL);
 if (!pool->name)
  goto exit;
 strcpy(pool->name, name);

 pool->slab =
     kmem_cache_create(pool->name, size, 0, SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!pool->slab)
  goto free_name;

 pool->mempool = mempool_create_slab_pool(min_nr, pool->slab);
 if (!pool->mempool)
  goto free_slab;

 return 0;

free_slab:
 kmem_cache_destroy(pool->slab);

free_name:
 kfree(pool->name);

exit:
 return -ENOMEM;
}
