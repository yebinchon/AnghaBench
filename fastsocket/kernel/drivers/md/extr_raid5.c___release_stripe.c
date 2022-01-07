
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int count; } ;
struct r5conf {int dummy; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int do_release_stripe (struct r5conf*,struct stripe_head*) ;

__attribute__((used)) static void __release_stripe(struct r5conf *conf, struct stripe_head *sh)
{
 if (atomic_dec_and_test(&sh->count))
  do_release_stripe(conf, sh);
}
