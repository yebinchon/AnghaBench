
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stripe_chunk {scalar_t__ bl; struct stripe* stripe; int cnt; } ;
struct stripe_cache {int dummy; } ;
struct TYPE_5__ {int pending; int size; } ;
struct stripe {TYPE_2__ io; int cnt; scalar_t__ lists; struct stripe_cache* sc; } ;
struct TYPE_4__ {unsigned int raid_devs; int io_size; } ;
struct TYPE_6__ {TYPE_1__ set; } ;


 unsigned int ARRAY_SIZE (scalar_t__) ;
 struct stripe_chunk* CHUNK (struct stripe*,unsigned int) ;
 int INIT_LIST_HEAD (scalar_t__) ;
 TYPE_3__* RS (struct stripe_cache*) ;
 int atomic_set (int *,int ) ;
 int bio_list_init (scalar_t__) ;
 int stripe_invalidate (struct stripe*) ;

__attribute__((used)) static void stripe_init(struct stripe_cache *sc, struct stripe *stripe)
{
 unsigned i, p = RS(sc)->set.raid_devs;


 while (p--) {
  struct stripe_chunk *chunk = CHUNK(stripe, p);

  atomic_set(&chunk->cnt, 0);
  chunk->stripe = stripe;
  i = ARRAY_SIZE(chunk->bl);
  while (i--)
   bio_list_init(chunk->bl + i);
 }

 stripe->sc = sc;

 i = ARRAY_SIZE(stripe->lists);
 while (i--)
  INIT_LIST_HEAD(stripe->lists + i);

 stripe->io.size = RS(sc)->set.io_size;
 atomic_set(&stripe->cnt, 0);
 atomic_set(&stripe->io.pending, 0);
 stripe_invalidate(stripe);
}
