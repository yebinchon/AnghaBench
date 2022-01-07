
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe {int dummy; } ;
struct raid_set {int sc; } ;


 struct stripe* stripe_io_pop (int *) ;
 scalar_t__ stripe_rw (struct stripe*) ;

__attribute__((used)) static int do_flush(struct raid_set *rs)
{
 int r = 0;
 struct stripe *stripe;

 while ((stripe = stripe_io_pop(&rs->sc)))
  r += stripe_rw(stripe);

 return r;
}
