
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe {int cnt; } ;


 int BUG_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int stripe_io_ref (struct stripe*) ;
 scalar_t__ stripe_ref (struct stripe*) ;
 int stripe_unlock (struct stripe*) ;

__attribute__((used)) static void stripe_put(struct stripe *stripe)
{
 if (atomic_dec_and_test(&stripe->cnt)) {
  BUG_ON(stripe_io_ref(stripe));
  stripe_unlock(stripe);
 } else
  BUG_ON(stripe_ref(stripe) < 0);
}
