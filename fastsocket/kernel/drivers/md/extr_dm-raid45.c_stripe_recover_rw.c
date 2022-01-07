
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe {TYPE_1__* recover; int key; } ;
struct TYPE_2__ {int pos; } ;


 int BUG_ON (int) ;
 int SetStripeMerged (struct stripe*) ;
 scalar_t__ TestClearStripeMerged (struct stripe*) ;
 scalar_t__ TestClearStripeRBW (struct stripe*) ;
 int dev_for_parity (struct stripe*,int*) ;
 int stripe_recover_read (struct stripe*,int ) ;
 int stripe_recover_write (struct stripe*,int ) ;

__attribute__((used)) static int stripe_recover_rw(struct stripe *stripe)
{
 int r = 0, sync = 0;


 if (TestClearStripeRBW(stripe)) {
  SetStripeMerged(stripe);
  stripe->key = stripe->recover->pos;
  r = stripe_recover_read(stripe, dev_for_parity(stripe, &sync));
  BUG_ON(!r);
 } else if (TestClearStripeMerged(stripe)) {
  r = stripe_recover_write(stripe, dev_for_parity(stripe, &sync));
  BUG_ON(!r);
 }

 BUG_ON(sync);
 return r;
}
