#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stripe_head_state {size_t* failed_num; int syncing; int failed; int uptodate; int req_compute; int /*<<< orphan*/  locked; int /*<<< orphan*/  ops_request; scalar_t__ to_write; scalar_t__ replacing; scalar_t__ expanding; } ;
struct TYPE_4__ {int target; int target2; } ;
struct stripe_head {TYPE_2__ ops; struct r5dev* dev; int /*<<< orphan*/  state; scalar_t__ sector; TYPE_1__* raid_conf; } ;
struct r5dev {int /*<<< orphan*/  flags; scalar_t__ towrite; scalar_t__ toread; } ;
struct TYPE_3__ {int level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  R5_Insync ; 
 int /*<<< orphan*/  R5_LOCKED ; 
 int /*<<< orphan*/  R5_OVERWRITE ; 
 int /*<<< orphan*/  R5_UPTODATE ; 
 int /*<<< orphan*/  R5_Wantcompute ; 
 int /*<<< orphan*/  R5_Wantread ; 
 int /*<<< orphan*/  STRIPE_COMPUTE_RUN ; 
 int /*<<< orphan*/  STRIPE_OP_COMPUTE_BLK ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct stripe_head*,int) ; 

__attribute__((used)) static int FUNC5(struct stripe_head *sh, struct stripe_head_state *s,
		       int disk_idx, int disks)
{
	struct r5dev *dev = &sh->dev[disk_idx];
	struct r5dev *fdev[2] = { &sh->dev[s->failed_num[0]],
				  &sh->dev[s->failed_num[1]] };

	/* is the data in this block needed, and can we get it? */
	if (!FUNC3(R5_LOCKED, &dev->flags) &&
	    !FUNC3(R5_UPTODATE, &dev->flags) &&
	    (dev->toread ||
	     (dev->towrite && !FUNC3(R5_OVERWRITE, &dev->flags)) ||
	     s->syncing || s->expanding ||
	     (s->replacing && FUNC4(sh, disk_idx)) ||
	     (s->failed >= 1 && fdev[0]->toread) ||
	     (s->failed >= 2 && fdev[1]->toread) ||
	     (sh->raid_conf->level <= 5 && s->failed && fdev[0]->towrite &&
	      !FUNC3(R5_OVERWRITE, &fdev[0]->flags)) ||
	     (sh->raid_conf->level == 6 && s->failed && s->to_write))) {
		/* we would like to get this block, possibly by computing it,
		 * otherwise read it if the backing disk is insync
		 */
		FUNC0(FUNC3(R5_Wantcompute, &dev->flags));
		FUNC0(FUNC3(R5_Wantread, &dev->flags));
		if ((s->uptodate == disks - 1) &&
		    (s->failed && (disk_idx == s->failed_num[0] ||
				   disk_idx == s->failed_num[1]))) {
			/* have disk failed, and we're requested to fetch it;
			 * do compute it
			 */
			FUNC1("Computing stripe %llu block %d\n",
			       (unsigned long long)sh->sector, disk_idx);
			FUNC2(STRIPE_COMPUTE_RUN, &sh->state);
			FUNC2(STRIPE_OP_COMPUTE_BLK, &s->ops_request);
			FUNC2(R5_Wantcompute, &dev->flags);
			sh->ops.target = disk_idx;
			sh->ops.target2 = -1; /* no 2nd target */
			s->req_compute = 1;
			/* Careful: from this point on 'uptodate' is in the eye
			 * of raid_run_ops which services 'compute' operations
			 * before writes. R5_Wantcompute flags a block that will
			 * be R5_UPTODATE by the time it is needed for a
			 * subsequent operation.
			 */
			s->uptodate++;
			return 1;
		} else if (s->uptodate == disks-2 && s->failed >= 2) {
			/* Computing 2-failure is *very* expensive; only
			 * do it if failed >= 2
			 */
			int other;
			for (other = disks; other--; ) {
				if (other == disk_idx)
					continue;
				if (!FUNC3(R5_UPTODATE,
				      &sh->dev[other].flags))
					break;
			}
			FUNC0(other < 0);
			FUNC1("Computing stripe %llu blocks %d,%d\n",
			       (unsigned long long)sh->sector,
			       disk_idx, other);
			FUNC2(STRIPE_COMPUTE_RUN, &sh->state);
			FUNC2(STRIPE_OP_COMPUTE_BLK, &s->ops_request);
			FUNC2(R5_Wantcompute, &sh->dev[disk_idx].flags);
			FUNC2(R5_Wantcompute, &sh->dev[other].flags);
			sh->ops.target = disk_idx;
			sh->ops.target2 = other;
			s->uptodate += 2;
			s->req_compute = 1;
			return 1;
		} else if (FUNC3(R5_Insync, &dev->flags)) {
			FUNC2(R5_LOCKED, &dev->flags);
			FUNC2(R5_Wantread, &dev->flags);
			s->locked++;
			FUNC1("Reading block %d (sync=%d)\n",
				disk_idx, s->syncing);
		}
	}

	return 0;
}