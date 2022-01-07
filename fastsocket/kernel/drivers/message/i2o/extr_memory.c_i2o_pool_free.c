
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_pool {int name; int slab; int mempool; } ;


 int kfree (int ) ;
 int kmem_cache_destroy (int ) ;
 int mempool_destroy (int ) ;

void i2o_pool_free(struct i2o_pool *pool)
{
 mempool_destroy(pool->mempool);
 kmem_cache_destroy(pool->slab);
 kfree(pool->name);
}
