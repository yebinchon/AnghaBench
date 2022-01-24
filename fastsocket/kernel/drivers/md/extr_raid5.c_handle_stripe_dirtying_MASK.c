#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stripe_head_state {scalar_t__ locked; scalar_t__ req_compute; } ;
struct stripe_head {scalar_t__ sector; int pd_idx; int qd_idx; int /*<<< orphan*/  state; struct r5dev* dev; } ;
struct r5dev {int /*<<< orphan*/  flags; scalar_t__ towrite; } ;
struct r5conf {int max_degraded; TYPE_1__* mddev; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ recovery_cp; scalar_t__ queue; } ;

/* Variables and functions */
 scalar_t__ MaxSector ; 
 int /*<<< orphan*/  R5_Insync ; 
 int /*<<< orphan*/  R5_LOCKED ; 
 int /*<<< orphan*/  R5_OVERWRITE ; 
 int /*<<< orphan*/  R5_UPTODATE ; 
 int /*<<< orphan*/  R5_Wantcompute ; 
 int /*<<< orphan*/  R5_Wantread ; 
 int /*<<< orphan*/  STRIPE_BIT_DELAY ; 
 int /*<<< orphan*/  STRIPE_COMPUTE_RUN ; 
 int /*<<< orphan*/  STRIPE_DELAYED ; 
 int /*<<< orphan*/  STRIPE_HANDLE ; 
 int /*<<< orphan*/  STRIPE_PREREAD_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,unsigned long long,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct stripe_head*,struct stripe_head_state*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct r5conf *conf,
				   struct stripe_head *sh,
				   struct stripe_head_state *s,
				   int disks)
{
	int rmw = 0, rcw = 0, i;
	sector_t recovery_cp = conf->mddev->recovery_cp;

	/* RAID6 requires 'rcw' in current implementation.
	 * Otherwise, check whether resync is now happening or should start.
	 * If yes, then the array is dirty (after unclean shutdown or
	 * initial creation), so parity in some stripes might be inconsistent.
	 * In this case, we need to always do reconstruct-write, to ensure
	 * that in case of drive failure or read-error correction, we
	 * generate correct data from the parity.
	 */
	if (conf->max_degraded == 2 ||
	    (recovery_cp < MaxSector && sh->sector >= recovery_cp)) {
		/* Calculate the real rcw later - for now make it
		 * look like rcw is cheaper
		 */
		rcw = 1; rmw = 2;
		FUNC1("force RCW max_degraded=%u, recovery_cp=%llu sh->sector=%llu\n",
			 conf->max_degraded, (unsigned long long)recovery_cp,
			 (unsigned long long)sh->sector);
	} else for (i = disks; i--; ) {
		/* would I have to read this buffer for read_modify_write */
		struct r5dev *dev = &sh->dev[i];
		if ((dev->towrite || i == sh->pd_idx) &&
		    !FUNC4(R5_LOCKED, &dev->flags) &&
		    !(FUNC4(R5_UPTODATE, &dev->flags) ||
		      FUNC4(R5_Wantcompute, &dev->flags))) {
			if (FUNC4(R5_Insync, &dev->flags))
				rmw++;
			else
				rmw += 2*disks;  /* cannot read it */
		}
		/* Would I have to read this buffer for reconstruct_write */
		if (!FUNC4(R5_OVERWRITE, &dev->flags) && i != sh->pd_idx &&
		    !FUNC4(R5_LOCKED, &dev->flags) &&
		    !(FUNC4(R5_UPTODATE, &dev->flags) ||
		    FUNC4(R5_Wantcompute, &dev->flags))) {
			if (FUNC4(R5_Insync, &dev->flags)) rcw++;
			else
				rcw += 2*disks;
		}
	}
	FUNC1("for sector %llu, rmw=%d rcw=%d\n",
		(unsigned long long)sh->sector, rmw, rcw);
	FUNC3(STRIPE_HANDLE, &sh->state);
	if (rmw < rcw && rmw > 0) {
		/* prefer read-modify-write, but need to get some data */
		if (conf->mddev->queue)
			FUNC0(conf->mddev->queue,
					  "raid5 rmw %llu %d",
					  (unsigned long long)sh->sector, rmw);
		for (i = disks; i--; ) {
			struct r5dev *dev = &sh->dev[i];
			if ((dev->towrite || i == sh->pd_idx) &&
			    !FUNC4(R5_LOCKED, &dev->flags) &&
			    !(FUNC4(R5_UPTODATE, &dev->flags) ||
			    FUNC4(R5_Wantcompute, &dev->flags)) &&
			    FUNC4(R5_Insync, &dev->flags)) {
				if (
				  FUNC4(STRIPE_PREREAD_ACTIVE, &sh->state)) {
					FUNC1("Read_old block "
						 "%d for r-m-w\n", i);
					FUNC3(R5_LOCKED, &dev->flags);
					FUNC3(R5_Wantread, &dev->flags);
					s->locked++;
				} else {
					FUNC3(STRIPE_DELAYED, &sh->state);
					FUNC3(STRIPE_HANDLE, &sh->state);
				}
			}
		}
	}
	if (rcw <= rmw && rcw > 0) {
		/* want reconstruct write, but need to get some data */
		int qread =0;
		rcw = 0;
		for (i = disks; i--; ) {
			struct r5dev *dev = &sh->dev[i];
			if (!FUNC4(R5_OVERWRITE, &dev->flags) &&
			    i != sh->pd_idx && i != sh->qd_idx &&
			    !FUNC4(R5_LOCKED, &dev->flags) &&
			    !(FUNC4(R5_UPTODATE, &dev->flags) ||
			      FUNC4(R5_Wantcompute, &dev->flags))) {
				rcw++;
				if (!FUNC4(R5_Insync, &dev->flags))
					continue; /* it's a failed drive */
				if (
				  FUNC4(STRIPE_PREREAD_ACTIVE, &sh->state)) {
					FUNC1("Read_old block "
						"%d for Reconstruct\n", i);
					FUNC3(R5_LOCKED, &dev->flags);
					FUNC3(R5_Wantread, &dev->flags);
					s->locked++;
					qread++;
				} else {
					FUNC3(STRIPE_DELAYED, &sh->state);
					FUNC3(STRIPE_HANDLE, &sh->state);
				}
			}
		}
		if (rcw && conf->mddev->queue)
			FUNC0(conf->mddev->queue, "raid5 rcw %llu %d %d %d",
					  (unsigned long long)sh->sector,
					  rcw, qread, FUNC4(STRIPE_DELAYED, &sh->state));
	}
	/* now if nothing is locked, and if we have enough data,
	 * we can start a write request
	 */
	/* since handle_stripe can be called at any time we need to handle the
	 * case where a compute block operation has been submitted and then a
	 * subsequent call wants to start a write request.  raid_run_ops only
	 * handles the case where compute block and reconstruct are requested
	 * simultaneously.  If this is not the case then new writes need to be
	 * held off until the compute completes.
	 */
	if ((s->req_compute || !FUNC4(STRIPE_COMPUTE_RUN, &sh->state)) &&
	    (s->locked == 0 && (rcw == 0 || rmw == 0) &&
	    !FUNC4(STRIPE_BIT_DELAY, &sh->state)))
		FUNC2(sh, s, rcw == 0, 0);
}