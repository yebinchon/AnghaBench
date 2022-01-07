
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_cache {scalar_t__ lists; } ;
struct stripe {int dummy; } ;
struct raid_set {struct stripe_cache sc; } ;
struct list_head {int dummy; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 scalar_t__ LIST_FLUSH ;
 int _do_endios (struct raid_set*,struct stripe*,struct list_head*) ;
 int list_splice (struct list_head*,scalar_t__) ;
 struct stripe* stripe_endio_pop (struct stripe_cache*) ;
 int stripe_io_ref (struct stripe*) ;

__attribute__((used)) static void do_endios(struct raid_set *rs)
{
 struct stripe_cache *sc = &rs->sc;
 struct stripe *stripe;

 struct list_head flush_list;

 INIT_LIST_HEAD(&flush_list);

 while ((stripe = stripe_endio_pop(sc))) {

  if (!stripe_io_ref(stripe))
   _do_endios(rs, stripe, &flush_list);
 }





 list_splice(&flush_list, sc->lists + LIST_FLUSH);
}
