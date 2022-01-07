
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cache; } ;
struct stripe_cache {TYPE_1__ kc; } ;
struct stripe {int obj; } ;
struct dm_mem_cache_client {int dummy; } ;
typedef enum grow { ____Placeholder_grow } grow ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int SC_GROW ;
 int dm_mem_cache_alloc (struct dm_mem_cache_client*) ;
 int dm_mem_cache_grow (struct dm_mem_cache_client*,int) ;
 int dm_mem_cache_shrink (struct dm_mem_cache_client*,int) ;
 int kmem_cache_free (int ,struct stripe*) ;
 struct stripe* kmem_cache_zalloc (int ,int ) ;
 int stripe_init (struct stripe_cache*,struct stripe*) ;

__attribute__((used)) static struct stripe *stripe_alloc(struct stripe_cache *sc,
       struct dm_mem_cache_client *mc,
       enum grow grow)
{
 int r;
 struct stripe *stripe;

 stripe = kmem_cache_zalloc(sc->kc.cache, GFP_KERNEL);
 if (stripe) {

  if (grow == SC_GROW) {
   r = dm_mem_cache_grow(mc, 1);
   if (r)
    goto err_free;
  }

  stripe->obj = dm_mem_cache_alloc(mc);
  if (IS_ERR(stripe->obj))
   goto err_shrink;

  stripe_init(sc, stripe);
 }

 return stripe;

err_shrink:
 if (grow == SC_GROW)
  dm_mem_cache_shrink(mc, 1);
err_free:
 kmem_cache_free(sc->kc.cache, stripe);
 return ((void*)0);
}
