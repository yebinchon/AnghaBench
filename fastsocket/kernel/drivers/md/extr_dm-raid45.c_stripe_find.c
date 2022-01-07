
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_cache {int hash; } ;
struct TYPE_4__ {int parity; } ;
struct stripe {TYPE_2__ idx; int region; int key; } ;
struct TYPE_3__ {int rh; } ;
struct raid_set {scalar_t__ stats; TYPE_1__ recover; struct stripe_cache sc; } ;
struct raid_address {int pi; int key; } ;


 int BUG_ON (int ) ;
 scalar_t__ S_HITS_1ST ;
 scalar_t__ S_INSCACHE ;
 int atomic_inc (scalar_t__) ;
 int dm_rh_sector_to_region (int ,int ) ;
 int stripe_get (struct stripe*) ;
 int stripe_hash_del (struct stripe*) ;
 int stripe_insert (int *,struct stripe*) ;
 int stripe_invalidate (struct stripe*) ;
 int stripe_io_ref (struct stripe*) ;
 struct stripe* stripe_lookup (struct stripe_cache*,int ) ;
 struct stripe* stripe_lru_pop (struct stripe_cache*) ;
 int stripe_put (struct stripe*) ;
 int stripe_ref (struct stripe*) ;

__attribute__((used)) static struct stripe *stripe_find(struct raid_set *rs,
      struct raid_address *addr)
{
 int r;
 struct stripe_cache *sc = &rs->sc;
 struct stripe *stripe;


 stripe = stripe_lookup(sc, addr->key);
 if (stripe) {
  r = stripe_get(stripe);
  if (r)
   goto get_lock_failed;

  atomic_inc(rs->stats + S_HITS_1ST);
 } else {

  stripe = stripe_lru_pop(sc);
  if (stripe) {




   BUG_ON(stripe_ref(stripe));
   BUG_ON(stripe_io_ref(stripe));


   stripe_hash_del(stripe);


   stripe_invalidate(stripe);

   stripe->key = addr->key;
   stripe->region = dm_rh_sector_to_region(rs->recover.rh,
        addr->key);
   stripe->idx.parity = addr->pi;
   r = stripe_get(stripe);
   if (r)
    goto get_lock_failed;


   stripe_insert(&sc->hash, stripe);

   atomic_inc(rs->stats + S_INSCACHE);
  }
 }

 return stripe;

get_lock_failed:
 stripe_put(stripe);
 return ((void*)0);
}
