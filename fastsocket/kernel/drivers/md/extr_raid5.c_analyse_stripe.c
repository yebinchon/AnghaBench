
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_head_state {int* failed_num; int compute; int handle_bad_blocks; int failed; int syncing; int replacing; struct md_rdev* blocked_rdev; int written; int non_overwrite; int to_write; int to_read; int to_fill; int uptodate; int locked; void* expanded; void* expanding; } ;
struct stripe_head {int disks; scalar_t__ sector; int state; struct r5dev* dev; struct r5conf* raid_conf; } ;
struct r5dev {int flags; scalar_t__ written; scalar_t__ towrite; scalar_t__ toread; } ;
struct r5conf {TYPE_2__* mddev; TYPE_1__* disks; } ;
struct md_rdev {scalar_t__ recovery_offset; int flags; int nr_pending; } ;
typedef int sector_t ;
struct TYPE_4__ {scalar_t__ recovery_cp; int recovery; } ;
struct TYPE_3__ {int replacement; int rdev; } ;


 int BUG_ON (int) ;
 int Blocked ;
 int BlockedBadBlocks ;
 int Faulty ;
 int In_sync ;
 int MD_RECOVERY_REQUESTED ;
 int R5_Expanded ;
 int R5_Insync ;
 int R5_LOCKED ;
 int R5_MadeGood ;
 int R5_MadeGoodRepl ;
 int R5_NeedReplace ;
 int R5_OVERWRITE ;
 int R5_ReWrite ;
 int R5_ReadError ;
 int R5_ReadRepl ;
 int R5_UPTODATE ;
 int R5_Wantcompute ;
 int R5_Wantfill ;
 int R5_WriteError ;
 int STRIPE_BIOFILL_RUN ;
 int STRIPE_EXPAND_READY ;
 int STRIPE_EXPAND_SOURCE ;
 scalar_t__ STRIPE_SECTORS ;
 int STRIPE_SYNCING ;
 int WriteErrorSeen ;
 int atomic_inc (int *) ;
 int clear_bit (int ,int *) ;
 int is_badblock (struct md_rdev*,scalar_t__,scalar_t__,int *,int*) ;
 int memset (struct stripe_head_state*,int ,int) ;
 int pr_debug (char*,int,int ,scalar_t__,scalar_t__,scalar_t__) ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_bit (int ,int *) ;
 void* test_bit (int ,int *) ;

__attribute__((used)) static void analyse_stripe(struct stripe_head *sh, struct stripe_head_state *s)
{
 struct r5conf *conf = sh->raid_conf;
 int disks = sh->disks;
 struct r5dev *dev;
 int i;
 int do_recovery = 0;

 memset(s, 0, sizeof(*s));

 s->expanding = test_bit(STRIPE_EXPAND_SOURCE, &sh->state);
 s->expanded = test_bit(STRIPE_EXPAND_READY, &sh->state);
 s->failed_num[0] = -1;
 s->failed_num[1] = -1;


 rcu_read_lock();
 for (i=disks; i--; ) {
  struct md_rdev *rdev;
  sector_t first_bad;
  int bad_sectors;
  int is_bad = 0;

  dev = &sh->dev[i];

  pr_debug("check %d: state 0x%lx read %p write %p written %p\n",
    i, dev->flags,
    dev->toread, dev->towrite, dev->written);





  if (test_bit(R5_UPTODATE, &dev->flags) && dev->toread &&
      !test_bit(STRIPE_BIOFILL_RUN, &sh->state))
   set_bit(R5_Wantfill, &dev->flags);


  if (test_bit(R5_LOCKED, &dev->flags))
   s->locked++;
  if (test_bit(R5_UPTODATE, &dev->flags))
   s->uptodate++;
  if (test_bit(R5_Wantcompute, &dev->flags)) {
   s->compute++;
   BUG_ON(s->compute > 2);
  }

  if (test_bit(R5_Wantfill, &dev->flags))
   s->to_fill++;
  else if (dev->toread)
   s->to_read++;
  if (dev->towrite) {
   s->to_write++;
   if (!test_bit(R5_OVERWRITE, &dev->flags))
    s->non_overwrite++;
  }
  if (dev->written)
   s->written++;



  rdev = rcu_dereference(conf->disks[i].replacement);
  if (rdev && !test_bit(Faulty, &rdev->flags) &&
      rdev->recovery_offset >= sh->sector + STRIPE_SECTORS &&
      !is_badblock(rdev, sh->sector, STRIPE_SECTORS,
     &first_bad, &bad_sectors))
   set_bit(R5_ReadRepl, &dev->flags);
  else {
   if (rdev)
    set_bit(R5_NeedReplace, &dev->flags);
   rdev = rcu_dereference(conf->disks[i].rdev);
   clear_bit(R5_ReadRepl, &dev->flags);
  }
  if (rdev && test_bit(Faulty, &rdev->flags))
   rdev = ((void*)0);
  if (rdev) {
   is_bad = is_badblock(rdev, sh->sector, STRIPE_SECTORS,
          &first_bad, &bad_sectors);
   if (s->blocked_rdev == ((void*)0)
       && (test_bit(Blocked, &rdev->flags)
    || is_bad < 0)) {
    if (is_bad < 0)
     set_bit(BlockedBadBlocks,
      &rdev->flags);
    s->blocked_rdev = rdev;
    atomic_inc(&rdev->nr_pending);
   }
  }
  clear_bit(R5_Insync, &dev->flags);
  if (!rdev)
                    ;
  else if (is_bad) {

   if (!test_bit(WriteErrorSeen, &rdev->flags) &&
       test_bit(R5_UPTODATE, &dev->flags)) {



    set_bit(R5_Insync, &dev->flags);
    set_bit(R5_ReadError, &dev->flags);
   }
  } else if (test_bit(In_sync, &rdev->flags))
   set_bit(R5_Insync, &dev->flags);
  else if (sh->sector + STRIPE_SECTORS <= rdev->recovery_offset)

   set_bit(R5_Insync, &dev->flags);
  else if (test_bit(R5_UPTODATE, &dev->flags) &&
    test_bit(R5_Expanded, &dev->flags))




   set_bit(R5_Insync, &dev->flags);

  if (rdev && test_bit(R5_WriteError, &dev->flags)) {


   struct md_rdev *rdev2 = rcu_dereference(
    conf->disks[i].rdev);
   if (rdev2 == rdev)
    clear_bit(R5_Insync, &dev->flags);
   if (rdev2 && !test_bit(Faulty, &rdev2->flags)) {
    s->handle_bad_blocks = 1;
    atomic_inc(&rdev2->nr_pending);
   } else
    clear_bit(R5_WriteError, &dev->flags);
  }
  if (rdev && test_bit(R5_MadeGood, &dev->flags)) {


   struct md_rdev *rdev2 = rcu_dereference(
    conf->disks[i].rdev);
   if (rdev2 && !test_bit(Faulty, &rdev2->flags)) {
    s->handle_bad_blocks = 1;
    atomic_inc(&rdev2->nr_pending);
   } else
    clear_bit(R5_MadeGood, &dev->flags);
  }
  if (test_bit(R5_MadeGoodRepl, &dev->flags)) {
   struct md_rdev *rdev2 = rcu_dereference(
    conf->disks[i].replacement);
   if (rdev2 && !test_bit(Faulty, &rdev2->flags)) {
    s->handle_bad_blocks = 1;
    atomic_inc(&rdev2->nr_pending);
   } else
    clear_bit(R5_MadeGoodRepl, &dev->flags);
  }
  if (!test_bit(R5_Insync, &dev->flags)) {

   clear_bit(R5_ReadError, &dev->flags);
   clear_bit(R5_ReWrite, &dev->flags);
  }
  if (test_bit(R5_ReadError, &dev->flags))
   clear_bit(R5_Insync, &dev->flags);
  if (!test_bit(R5_Insync, &dev->flags)) {
   if (s->failed < 2)
    s->failed_num[s->failed] = i;
   s->failed++;
   if (rdev && !test_bit(Faulty, &rdev->flags))
    do_recovery = 1;
  }
 }
 if (test_bit(STRIPE_SYNCING, &sh->state)) {
  if (do_recovery ||
      sh->sector >= conf->mddev->recovery_cp ||
      test_bit(MD_RECOVERY_REQUESTED, &(conf->mddev->recovery)))
   s->syncing = 1;
  else
   s->replacing = 1;
 }
 rcu_read_unlock();
}
