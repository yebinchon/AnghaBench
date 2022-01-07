
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recover; } ;
struct stripe {scalar_t__ lists; TYPE_1__ idx; } ;
struct raid_set {scalar_t__ stats; } ;
struct list_head {int dummy; } ;


 int BUG_ON (int) ;
 int ClearStripeMerged (struct stripe*) ;
 int ClearStripeReconstruct (struct stripe*) ;
 int ClearStripeReconstructed (struct stripe*) ;
 int DMERR (char*) ;
 scalar_t__ LIST_FLUSH ;
 scalar_t__ LIST_LRU ;
 int READ ;
 scalar_t__ RSDead (struct raid_set*) ;
 int RSProhibitWrites (struct raid_set*) ;
 scalar_t__ S_REQUEUE ;
 int SetStripeReconstructed (struct stripe*) ;
 scalar_t__ StripeMerged (struct stripe*) ;
 scalar_t__ StripeReconstruct (struct stripe*) ;
 scalar_t__ TestClearStripeError (struct stripe*) ;
 int TestSetRSDeadEndioMessage (struct raid_set*) ;
 int WRITE_MERGED ;
 int atomic_inc (scalar_t__) ;
 int list_add_tail (scalar_t__,struct list_head*) ;
 int list_empty (scalar_t__) ;
 int rs_check_degrade (struct stripe*) ;
 int stripe_chunks_unlock (struct stripe*) ;
 int stripe_endio (int ,struct stripe*) ;
 int stripe_fail_io (struct stripe*) ;
 int stripe_lru_add (struct stripe*) ;
 int stripe_reconstruct (struct stripe*) ;
 scalar_t__ stripe_ref (struct stripe*) ;

__attribute__((used)) static void _do_endios(struct raid_set *rs, struct stripe *stripe,
         struct list_head *flush_list)
{

 stripe_chunks_unlock(stripe);






 if (TestClearStripeError(stripe)) {




  rs_check_degrade(stripe);
  ClearStripeReconstruct(stripe);
  ClearStripeReconstructed(stripe);






 }


 if (StripeReconstruct(stripe)) {





  stripe_reconstruct(stripe);






  ClearStripeReconstruct(stripe);
  SetStripeReconstructed(stripe);







  stripe->idx.recover = -1;
 }





 stripe_endio(READ, stripe);


 if (!RSProhibitWrites(rs) && StripeMerged(stripe)) {
  ClearStripeMerged(stripe);
  stripe_endio(WRITE_MERGED, stripe);
 }


 if (RSDead(rs)) {
  if (!TestSetRSDeadEndioMessage(rs))
   DMERR("RAID set dead: failing ios to dead devices");

  stripe_fail_io(stripe);
 }






 if (stripe_ref(stripe)) {
  BUG_ON(!list_empty(stripe->lists + LIST_LRU));
  list_add_tail(stripe->lists + LIST_FLUSH, flush_list);
  atomic_inc(rs->stats + S_REQUEUE);
 } else
  stripe_lru_add(stripe);
}
