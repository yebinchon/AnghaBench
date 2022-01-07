
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {size_t pd_idx; size_t qd_idx; int state; struct r5dev* dev; int sector; } ;
struct r5dev {scalar_t__ sector; int flags; struct bio* written; } ;
struct r5conf {TYPE_1__* mddev; int pending_full_writes; } ;
struct bio {scalar_t__ bi_sector; struct bio* bi_next; } ;
struct TYPE_2__ {int thread; int bitmap; } ;


 int R5_Discard ;
 int R5_LOCKED ;
 int R5_UPTODATE ;
 int STRIPE_DEGRADED ;
 int STRIPE_DISCARD ;
 int STRIPE_FULL_WRITE ;
 int STRIPE_HANDLE ;
 scalar_t__ STRIPE_SECTORS ;
 int STRIPE_SYNC_REQUESTED ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int bitmap_endwrite (int ,int ,scalar_t__,int,int ) ;
 int clear_bit (int ,int *) ;
 int md_wakeup_thread (int ) ;
 int md_write_end (TYPE_1__*) ;
 int pr_debug (char*,int) ;
 struct bio* r5_next_bio (struct bio*,scalar_t__) ;
 int raid5_dec_bi_active_stripes (struct bio*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void handle_stripe_clean_event(struct r5conf *conf,
 struct stripe_head *sh, int disks, struct bio **return_bi)
{
 int i;
 struct r5dev *dev;
 int discard_pending = 0;

 for (i = disks; i--; )
  if (sh->dev[i].written) {
   dev = &sh->dev[i];
   if (!test_bit(R5_LOCKED, &dev->flags) &&
       (test_bit(R5_UPTODATE, &dev->flags) ||
        test_bit(R5_Discard, &dev->flags))) {

    struct bio *wbi, *wbi2;
    pr_debug("Return write for disc %d\n", i);
    if (test_and_clear_bit(R5_Discard, &dev->flags))
     clear_bit(R5_UPTODATE, &dev->flags);
    wbi = dev->written;
    dev->written = ((void*)0);
    while (wbi && wbi->bi_sector <
     dev->sector + STRIPE_SECTORS) {
     wbi2 = r5_next_bio(wbi, dev->sector);
     if (!raid5_dec_bi_active_stripes(wbi)) {
      md_write_end(conf->mddev);
      wbi->bi_next = *return_bi;
      *return_bi = wbi;
     }
     wbi = wbi2;
    }
    bitmap_endwrite(conf->mddev->bitmap, sh->sector,
      STRIPE_SECTORS,
      !test_bit(STRIPE_DEGRADED, &sh->state),
      0);
   } else if (test_bit(R5_Discard, &dev->flags))
    discard_pending = 1;
  }
 if (!discard_pending &&
     test_bit(R5_Discard, &sh->dev[sh->pd_idx].flags)) {
  clear_bit(R5_Discard, &sh->dev[sh->pd_idx].flags);
  clear_bit(R5_UPTODATE, &sh->dev[sh->pd_idx].flags);
  if (sh->qd_idx >= 0) {
   clear_bit(R5_Discard, &sh->dev[sh->qd_idx].flags);
   clear_bit(R5_UPTODATE, &sh->dev[sh->qd_idx].flags);
  }

  clear_bit(STRIPE_DISCARD, &sh->state);
  if (test_bit(STRIPE_SYNC_REQUESTED, &sh->state))
   set_bit(STRIPE_HANDLE, &sh->state);

 }

 if (test_and_clear_bit(STRIPE_FULL_WRITE, &sh->state))
  if (atomic_dec_and_test(&conf->pending_full_writes))
   md_wakeup_thread(conf->mddev->thread);
}
