
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_cache {int stripes; int active_stripes_max; int mem_cache_client; } ;
struct stripe {int dummy; } ;


 int BUG_ON (int ) ;
 int ENOENT ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int sc_hash_resize (struct stripe_cache*) ;
 int stripe_free (struct stripe*,int ) ;
 int stripe_hash_del (struct stripe*) ;
 int stripe_io_ref (struct stripe*) ;
 struct stripe* stripe_lru_pop (struct stripe_cache*) ;
 int stripe_ref (struct stripe*) ;

__attribute__((used)) static int sc_shrink(struct stripe_cache *sc, unsigned stripes)
{
 int r = 0;


 while (stripes--) {
  struct stripe *stripe;

  stripe = stripe_lru_pop(sc);
  if (stripe) {

   BUG_ON(stripe_io_ref(stripe));
   BUG_ON(stripe_ref(stripe));
   atomic_dec(&sc->stripes);

   stripe_hash_del(stripe);
   stripe_free(stripe, sc->mem_cache_client);
  } else {
   r = -ENOENT;
   break;
  }
 }


 if (atomic_read(&sc->active_stripes_max) >
     atomic_read(&sc->stripes))
  atomic_set(&sc->active_stripes_max, 0);

 if (r)
  return r;

 return atomic_read(&sc->stripes) ? sc_hash_resize(sc) : 0;
}
