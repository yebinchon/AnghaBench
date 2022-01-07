
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_cache {int * locks; struct list_head* lists; } ;
struct stripe {struct list_head* lists; struct stripe_cache* sc; } ;
struct list_head {int dummy; } ;
typedef int spinlock_t ;


 int LIST_ENDIO ;
 int LOCK_ENDIO ;
 int RS (struct stripe_cache*) ;
 int list_add_tail (struct list_head*,struct list_head*) ;
 scalar_t__ list_empty (struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_do_raid (int ) ;

__attribute__((used)) static void stripe_endio_push(struct stripe *stripe)
{
 unsigned long flags;
 struct stripe_cache *sc = stripe->sc;
 struct list_head *stripe_list = stripe->lists + LIST_ENDIO,
    *sc_list = sc->lists + LIST_ENDIO;
 spinlock_t *lock = sc->locks + LOCK_ENDIO;


 spin_lock_irqsave(lock, flags);
 if (list_empty(stripe_list))
  list_add_tail(stripe_list, sc_list);
 spin_unlock_irqrestore(lock, flags);

 wake_do_raid(RS(sc));
}
