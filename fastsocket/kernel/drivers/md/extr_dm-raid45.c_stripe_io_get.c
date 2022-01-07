
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
 int atomic_inc (int *) ;
 int atomic_inc_return (int *) ;
 scalar_t__ stripe_io_ref (struct stripe*) ;

__attribute__((used)) static void stripe_io_get(struct stripe *stripe)
{
 if (atomic_inc_return(&stripe->io.pending) == 1)

  atomic_inc(&stripe->sc->active_stripes);
 else
  BUG_ON(stripe_io_ref(stripe) < 0);
}
