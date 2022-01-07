
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_cache {int active_stripes_max; } ;
struct stripe {int sc; } ;
struct raid_set {scalar_t__ stats; struct stripe_cache sc; } ;


 struct raid_set* RS (int ) ;
 scalar_t__ S_FLUSHS ;
 int atomic_inc (scalar_t__) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int for_each_io_dev (struct stripe*,int ) ;
 int sc_active (struct stripe_cache*) ;
 int stripe_chunk_rw ;
 int stripe_get_references ;

__attribute__((used)) static int stripe_chunks_rw(struct stripe *stripe)
{
 int r;
 struct raid_set *rs = RS(stripe->sc);
 r = for_each_io_dev(stripe, stripe_get_references);
 if (r) {

  int max;
  struct stripe_cache *sc = &rs->sc;


  for_each_io_dev(stripe, stripe_chunk_rw);


  max = sc_active(sc);
  if (atomic_read(&sc->active_stripes_max) < max)
   atomic_set(&sc->active_stripes_max, max);

  atomic_inc(rs->stats + S_FLUSHS);

 }

 return r;
}
