
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head_state {scalar_t__ locked; scalar_t__ req_compute; } ;
struct stripe_head {scalar_t__ sector; int pd_idx; int qd_idx; int state; struct r5dev* dev; } ;
struct r5dev {int flags; scalar_t__ towrite; } ;
struct r5conf {int max_degraded; TYPE_1__* mddev; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ recovery_cp; scalar_t__ queue; } ;


 scalar_t__ MaxSector ;
 int R5_Insync ;
 int R5_LOCKED ;
 int R5_OVERWRITE ;
 int R5_UPTODATE ;
 int R5_Wantcompute ;
 int R5_Wantread ;
 int STRIPE_BIT_DELAY ;
 int STRIPE_COMPUTE_RUN ;
 int STRIPE_DELAYED ;
 int STRIPE_HANDLE ;
 int STRIPE_PREREAD_ACTIVE ;
 int blk_add_trace_msg (scalar_t__,char*,unsigned long long,int,...) ;
 int pr_debug (char*,int,...) ;
 int schedule_reconstruction (struct stripe_head*,struct stripe_head_state*,int,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void handle_stripe_dirtying(struct r5conf *conf,
       struct stripe_head *sh,
       struct stripe_head_state *s,
       int disks)
{
 int rmw = 0, rcw = 0, i;
 sector_t recovery_cp = conf->mddev->recovery_cp;
 if (conf->max_degraded == 2 ||
     (recovery_cp < MaxSector && sh->sector >= recovery_cp)) {



  rcw = 1; rmw = 2;
  pr_debug("force RCW max_degraded=%u, recovery_cp=%llu sh->sector=%llu\n",
    conf->max_degraded, (unsigned long long)recovery_cp,
    (unsigned long long)sh->sector);
 } else for (i = disks; i--; ) {

  struct r5dev *dev = &sh->dev[i];
  if ((dev->towrite || i == sh->pd_idx) &&
      !test_bit(R5_LOCKED, &dev->flags) &&
      !(test_bit(R5_UPTODATE, &dev->flags) ||
        test_bit(R5_Wantcompute, &dev->flags))) {
   if (test_bit(R5_Insync, &dev->flags))
    rmw++;
   else
    rmw += 2*disks;
  }

  if (!test_bit(R5_OVERWRITE, &dev->flags) && i != sh->pd_idx &&
      !test_bit(R5_LOCKED, &dev->flags) &&
      !(test_bit(R5_UPTODATE, &dev->flags) ||
      test_bit(R5_Wantcompute, &dev->flags))) {
   if (test_bit(R5_Insync, &dev->flags)) rcw++;
   else
    rcw += 2*disks;
  }
 }
 pr_debug("for sector %llu, rmw=%d rcw=%d\n",
  (unsigned long long)sh->sector, rmw, rcw);
 set_bit(STRIPE_HANDLE, &sh->state);
 if (rmw < rcw && rmw > 0) {

  if (conf->mddev->queue)
   blk_add_trace_msg(conf->mddev->queue,
       "raid5 rmw %llu %d",
       (unsigned long long)sh->sector, rmw);
  for (i = disks; i--; ) {
   struct r5dev *dev = &sh->dev[i];
   if ((dev->towrite || i == sh->pd_idx) &&
       !test_bit(R5_LOCKED, &dev->flags) &&
       !(test_bit(R5_UPTODATE, &dev->flags) ||
       test_bit(R5_Wantcompute, &dev->flags)) &&
       test_bit(R5_Insync, &dev->flags)) {
    if (
      test_bit(STRIPE_PREREAD_ACTIVE, &sh->state)) {
     pr_debug("Read_old block "
       "%d for r-m-w\n", i);
     set_bit(R5_LOCKED, &dev->flags);
     set_bit(R5_Wantread, &dev->flags);
     s->locked++;
    } else {
     set_bit(STRIPE_DELAYED, &sh->state);
     set_bit(STRIPE_HANDLE, &sh->state);
    }
   }
  }
 }
 if (rcw <= rmw && rcw > 0) {

  int qread =0;
  rcw = 0;
  for (i = disks; i--; ) {
   struct r5dev *dev = &sh->dev[i];
   if (!test_bit(R5_OVERWRITE, &dev->flags) &&
       i != sh->pd_idx && i != sh->qd_idx &&
       !test_bit(R5_LOCKED, &dev->flags) &&
       !(test_bit(R5_UPTODATE, &dev->flags) ||
         test_bit(R5_Wantcompute, &dev->flags))) {
    rcw++;
    if (!test_bit(R5_Insync, &dev->flags))
     continue;
    if (
      test_bit(STRIPE_PREREAD_ACTIVE, &sh->state)) {
     pr_debug("Read_old block "
      "%d for Reconstruct\n", i);
     set_bit(R5_LOCKED, &dev->flags);
     set_bit(R5_Wantread, &dev->flags);
     s->locked++;
     qread++;
    } else {
     set_bit(STRIPE_DELAYED, &sh->state);
     set_bit(STRIPE_HANDLE, &sh->state);
    }
   }
  }
  if (rcw && conf->mddev->queue)
   blk_add_trace_msg(conf->mddev->queue, "raid5 rcw %llu %d %d %d",
       (unsigned long long)sh->sector,
       rcw, qread, test_bit(STRIPE_DELAYED, &sh->state));
 }
 if ((s->req_compute || !test_bit(STRIPE_COMPUTE_RUN, &sh->state)) &&
     (s->locked == 0 && (rcw == 0 || rmw == 0) &&
     !test_bit(STRIPE_BIT_DELAY, &sh->state)))
  schedule_reconstruction(sh, s, rcw == 0, 0);
}
