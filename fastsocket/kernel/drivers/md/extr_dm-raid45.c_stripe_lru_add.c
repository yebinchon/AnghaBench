
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe {TYPE_1__* sc; struct list_head* lists; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int lists; } ;


 int LIST_LRU ;
 int StripeRecover (struct stripe*) ;
 int list_add_tail (struct list_head*,int) ;
 scalar_t__ list_empty (struct list_head*) ;

__attribute__((used)) static void stripe_lru_add(struct stripe *stripe)
{
 if (!StripeRecover(stripe)) {
  struct list_head *lh = stripe->lists + LIST_LRU;

  if (list_empty(lh))
   list_add_tail(lh, stripe->sc->lists + LIST_LRU);
 }
}
