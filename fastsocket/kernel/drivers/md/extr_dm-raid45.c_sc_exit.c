
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cache; } ;
struct stripe_cache {int hash; scalar_t__ dm_io_client; scalar_t__ mem_cache_client; TYPE_1__ kc; int stripes; } ;
struct raid_set {int dummy; } ;


 int BUG_ON (int ) ;
 int IS_ERR (scalar_t__) ;
 struct raid_set* RS (struct stripe_cache*) ;
 int atomic_read (int *) ;
 int dm_io_client_destroy (scalar_t__) ;
 int dm_mem_cache_client_destroy (scalar_t__) ;
 int hash_exit (int *) ;
 int kmem_cache_destroy (int *) ;
 int sc_shrink (struct stripe_cache*,int ) ;
 int stripe_recover_free (struct raid_set*) ;

__attribute__((used)) static void sc_exit(struct stripe_cache *sc)
{
 struct raid_set *rs = RS(sc);

 if (sc->kc.cache) {
  stripe_recover_free(rs);
  BUG_ON(sc_shrink(sc, atomic_read(&sc->stripes)));
  kmem_cache_destroy(sc->kc.cache);
  sc->kc.cache = ((void*)0);

  if (sc->mem_cache_client && !IS_ERR(sc->mem_cache_client))
   dm_mem_cache_client_destroy(sc->mem_cache_client);

  if (sc->dm_io_client && !IS_ERR(sc->dm_io_client))
   dm_io_client_destroy(sc->dm_io_client);

  hash_exit(&sc->hash);
 }
}
