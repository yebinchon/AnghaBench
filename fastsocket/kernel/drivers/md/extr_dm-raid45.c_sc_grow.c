
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_cache {int stripes; int mem_cache_client; } ;
struct stripe {int dummy; } ;
typedef enum grow { ____Placeholder_grow } grow ;


 int ENOMEM ;
 int atomic_inc (int *) ;
 scalar_t__ likely (struct stripe*) ;
 int sc_hash_resize (struct stripe_cache*) ;
 struct stripe* stripe_alloc (struct stripe_cache*,int ,int) ;
 int stripe_lru_add (struct stripe*) ;

__attribute__((used)) static int sc_grow(struct stripe_cache *sc, unsigned stripes, enum grow grow)
{
 int r = 0;


 while (stripes--) {
  struct stripe *stripe =
   stripe_alloc(sc, sc->mem_cache_client, grow);

  if (likely(stripe)) {
   stripe_lru_add(stripe);
   atomic_inc(&sc->stripes);
  } else {
   r = -ENOMEM;
   break;
  }
 }

 return r ? r : sc_hash_resize(sc);
}
