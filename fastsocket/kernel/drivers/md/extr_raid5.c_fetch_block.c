
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_head_state {size_t* failed_num; int syncing; int failed; int uptodate; int req_compute; int locked; int ops_request; scalar_t__ to_write; scalar_t__ replacing; scalar_t__ expanding; } ;
struct TYPE_4__ {int target; int target2; } ;
struct stripe_head {TYPE_2__ ops; struct r5dev* dev; int state; scalar_t__ sector; TYPE_1__* raid_conf; } ;
struct r5dev {int flags; scalar_t__ towrite; scalar_t__ toread; } ;
struct TYPE_3__ {int level; } ;


 int BUG_ON (int) ;
 int R5_Insync ;
 int R5_LOCKED ;
 int R5_OVERWRITE ;
 int R5_UPTODATE ;
 int R5_Wantcompute ;
 int R5_Wantread ;
 int STRIPE_COMPUTE_RUN ;
 int STRIPE_OP_COMPUTE_BLK ;
 int pr_debug (char*,int,int,...) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ want_replace (struct stripe_head*,int) ;

__attribute__((used)) static int fetch_block(struct stripe_head *sh, struct stripe_head_state *s,
         int disk_idx, int disks)
{
 struct r5dev *dev = &sh->dev[disk_idx];
 struct r5dev *fdev[2] = { &sh->dev[s->failed_num[0]],
      &sh->dev[s->failed_num[1]] };


 if (!test_bit(R5_LOCKED, &dev->flags) &&
     !test_bit(R5_UPTODATE, &dev->flags) &&
     (dev->toread ||
      (dev->towrite && !test_bit(R5_OVERWRITE, &dev->flags)) ||
      s->syncing || s->expanding ||
      (s->replacing && want_replace(sh, disk_idx)) ||
      (s->failed >= 1 && fdev[0]->toread) ||
      (s->failed >= 2 && fdev[1]->toread) ||
      (sh->raid_conf->level <= 5 && s->failed && fdev[0]->towrite &&
       !test_bit(R5_OVERWRITE, &fdev[0]->flags)) ||
      (sh->raid_conf->level == 6 && s->failed && s->to_write))) {



  BUG_ON(test_bit(R5_Wantcompute, &dev->flags));
  BUG_ON(test_bit(R5_Wantread, &dev->flags));
  if ((s->uptodate == disks - 1) &&
      (s->failed && (disk_idx == s->failed_num[0] ||
       disk_idx == s->failed_num[1]))) {



   pr_debug("Computing stripe %llu block %d\n",
          (unsigned long long)sh->sector, disk_idx);
   set_bit(STRIPE_COMPUTE_RUN, &sh->state);
   set_bit(STRIPE_OP_COMPUTE_BLK, &s->ops_request);
   set_bit(R5_Wantcompute, &dev->flags);
   sh->ops.target = disk_idx;
   sh->ops.target2 = -1;
   s->req_compute = 1;






   s->uptodate++;
   return 1;
  } else if (s->uptodate == disks-2 && s->failed >= 2) {



   int other;
   for (other = disks; other--; ) {
    if (other == disk_idx)
     continue;
    if (!test_bit(R5_UPTODATE,
          &sh->dev[other].flags))
     break;
   }
   BUG_ON(other < 0);
   pr_debug("Computing stripe %llu blocks %d,%d\n",
          (unsigned long long)sh->sector,
          disk_idx, other);
   set_bit(STRIPE_COMPUTE_RUN, &sh->state);
   set_bit(STRIPE_OP_COMPUTE_BLK, &s->ops_request);
   set_bit(R5_Wantcompute, &sh->dev[disk_idx].flags);
   set_bit(R5_Wantcompute, &sh->dev[other].flags);
   sh->ops.target = disk_idx;
   sh->ops.target2 = other;
   s->uptodate += 2;
   s->req_compute = 1;
   return 1;
  } else if (test_bit(R5_Insync, &dev->flags)) {
   set_bit(R5_LOCKED, &dev->flags);
   set_bit(R5_Wantread, &dev->flags);
   s->locked++;
   pr_debug("Reading block %d (sync=%d)\n",
    disk_idx, s->syncing);
  }
 }

 return 0;
}
