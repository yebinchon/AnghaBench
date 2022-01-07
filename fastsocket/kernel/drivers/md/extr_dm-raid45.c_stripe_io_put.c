
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pending; } ;
struct stripe {TYPE_2__* sc; TYPE_1__ io; } ;
struct TYPE_4__ {int active_stripes; } ;


 int BUG_ON (int) ;
 int RS (TYPE_2__*) ;
 int StripeRecover (struct stripe*) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int stripe_endio_push (struct stripe*) ;
 scalar_t__ stripe_io_ref (struct stripe*) ;
 scalar_t__ unlikely (int ) ;
 int wake_do_raid (int ) ;

__attribute__((used)) static void stripe_io_put(struct stripe *stripe)
{
 if (atomic_dec_and_test(&stripe->io.pending)) {
  if (unlikely(StripeRecover(stripe)))

   wake_do_raid(RS(stripe->sc));
  else

   stripe_endio_push(stripe);


  atomic_dec(&stripe->sc->active_stripes);
 } else
  BUG_ON(stripe_io_ref(stripe) < 0);
}
