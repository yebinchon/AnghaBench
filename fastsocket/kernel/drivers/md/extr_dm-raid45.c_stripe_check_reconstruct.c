
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe {int sc; } ;
struct TYPE_2__ {scalar_t__ ei; } ;
struct raid_set {scalar_t__ stats; TYPE_1__ set; } ;


 int BUG_ON (int) ;
 int ClearStripeReconstruct (struct stripe*) ;
 int ClearStripeReconstructed (struct stripe*) ;
 int EBUSY ;
 struct raid_set* RS (int ) ;
 scalar_t__ RSDead (struct raid_set*) ;
 int RSDegraded (struct raid_set*) ;
 scalar_t__ RSEnforceParityCreation (struct raid_set*) ;
 scalar_t__ S_DEGRADED ;
 scalar_t__ S_NOSYNC ;
 scalar_t__ S_RECONSTRUCTED ;
 scalar_t__ S_RECONSTRUCT_SET ;
 scalar_t__ StripeReconstruct (struct stripe*) ;
 scalar_t__ StripeReconstructed (struct stripe*) ;
 int atomic_inc (scalar_t__) ;
 int dev_for_parity (struct stripe*,int*) ;
 int stripe_allow_io (struct stripe*) ;
 int stripe_chunk_set_io_flags (struct stripe*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int stripe_check_reconstruct(struct stripe *stripe)
{
 struct raid_set *rs = RS(stripe->sc);

 if (RSDead(rs)) {
  ClearStripeReconstruct(stripe);
  ClearStripeReconstructed(stripe);
  stripe_allow_io(stripe);
  return 0;
 }


 if (StripeReconstruct(stripe)) {

  atomic_inc(rs->stats + S_RECONSTRUCT_SET);
  return -EBUSY;
 }


 stripe_allow_io(stripe);


 if (StripeReconstructed(stripe)) {
  atomic_inc(rs->stats + S_RECONSTRUCTED);
  return 0;
 }





 if (unlikely(RSDegraded(rs))) {

  atomic_inc(rs->stats + S_DEGRADED);

  BUG_ON(rs->set.ei < 0);
  return stripe_chunk_set_io_flags(stripe, rs->set.ei);
 } else {
  int sync, pi = dev_for_parity(stripe, &sync);
  if (RSEnforceParityCreation(rs) || !sync) {

   atomic_inc(rs->stats + S_NOSYNC);

   return stripe_chunk_set_io_flags(stripe, pi);
  }
 }

 return 0;
}
