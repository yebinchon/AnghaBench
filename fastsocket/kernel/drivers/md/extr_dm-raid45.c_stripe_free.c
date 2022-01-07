
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe {TYPE_2__* sc; int obj; } ;
struct dm_mem_cache_client {int dummy; } ;
struct TYPE_3__ {int cache; } ;
struct TYPE_4__ {TYPE_1__ kc; } ;


 int dm_mem_cache_free (struct dm_mem_cache_client*,int ) ;
 int dm_mem_cache_shrink (struct dm_mem_cache_client*,int) ;
 int kmem_cache_free (int ,struct stripe*) ;

__attribute__((used)) static void stripe_free(struct stripe *stripe, struct dm_mem_cache_client *mc)
{
 dm_mem_cache_free(mc, stripe->obj);
 dm_mem_cache_shrink(mc, 1);
 kmem_cache_free(stripe->sc->kc.cache, stripe);
}
