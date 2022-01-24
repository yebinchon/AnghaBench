#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stripe_head_state {int uptodate; scalar_t__ failed; size_t* failed_num; int dec_preread_active; int p_failed; int q_failed; int compute; int /*<<< orphan*/  return_bi; scalar_t__ ops_request; scalar_t__ handle_bad_blocks; struct md_rdev* blocked_rdev; int /*<<< orphan*/  locked; scalar_t__ expanding; scalar_t__ expanded; scalar_t__ replacing; scalar_t__ syncing; scalar_t__ to_write; scalar_t__ non_overwrite; scalar_t__ to_read; scalar_t__ written; scalar_t__ to_fill; } ;
struct stripe_head {int disks; size_t pd_idx; scalar_t__ qd_idx; scalar_t__ reconstruct_state; scalar_t__ sector; struct r5dev* dev; int /*<<< orphan*/  lock; scalar_t__ state; scalar_t__ check_state; int /*<<< orphan*/  count; int /*<<< orphan*/  stripe_lock; struct r5conf* raid_conf; } ;
struct r5dev {scalar_t__ flags; scalar_t__ written; } ;
struct r5conf {scalar_t__ max_degraded; int level; int raid_disks; TYPE_2__* mddev; int /*<<< orphan*/  preread_active_stripes; TYPE_1__* disks; int /*<<< orphan*/  wait_for_overlap; int /*<<< orphan*/  reshape_stripes; } ;
struct md_rdev {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  thread; scalar_t__ external; int /*<<< orphan*/  ro; } ;
struct TYPE_6__ {struct md_rdev* rdev; struct md_rdev* replacement; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IO_THRESHOLD ; 
 int /*<<< orphan*/  R5_Discard ; 
 int /*<<< orphan*/  R5_Insync ; 
 int /*<<< orphan*/  R5_LOCKED ; 
 int /*<<< orphan*/  R5_MadeGood ; 
 int /*<<< orphan*/  R5_MadeGoodRepl ; 
 int /*<<< orphan*/  R5_NeedReplace ; 
 int /*<<< orphan*/  R5_Overlap ; 
 int /*<<< orphan*/  R5_ReWrite ; 
 int /*<<< orphan*/  R5_ReadError ; 
 int /*<<< orphan*/  R5_UPTODATE ; 
 int /*<<< orphan*/  R5_WantReplace ; 
 int /*<<< orphan*/  R5_Wantread ; 
 int /*<<< orphan*/  R5_Wantwrite ; 
 int /*<<< orphan*/  R5_WriteError ; 
 int /*<<< orphan*/  STRIPE_BIOFILL_RUN ; 
 int /*<<< orphan*/  STRIPE_COMPUTE_RUN ; 
 int /*<<< orphan*/  STRIPE_DELAYED ; 
 int /*<<< orphan*/  STRIPE_DISCARD ; 
 int /*<<< orphan*/  STRIPE_EXPANDING ; 
 int /*<<< orphan*/  STRIPE_EXPAND_READY ; 
 int /*<<< orphan*/  STRIPE_EXPAND_SOURCE ; 
 int /*<<< orphan*/  STRIPE_HANDLE ; 
 int /*<<< orphan*/  STRIPE_INSYNC ; 
 int /*<<< orphan*/  STRIPE_OP_BIOFILL ; 
 int /*<<< orphan*/  STRIPE_PREREAD_ACTIVE ; 
 int /*<<< orphan*/  STRIPE_REPLACED ; 
 int /*<<< orphan*/  STRIPE_SECTORS ; 
 int /*<<< orphan*/  STRIPE_SYNCING ; 
 int /*<<< orphan*/  STRIPE_SYNC_REQUESTED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct stripe_head*,struct stripe_head_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 struct stripe_head* FUNC7 (struct r5conf*,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct r5conf*,struct stripe_head*,struct stripe_head_state*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct r5conf*,struct stripe_head*,struct stripe_head_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct r5conf*,struct stripe_head*,struct stripe_head_state*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct r5conf*,struct stripe_head*,struct stripe_head_state*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct r5conf*,struct stripe_head*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct r5conf*,struct stripe_head*,struct stripe_head_state*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct r5conf*,struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct stripe_head*,struct stripe_head_state*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC18 (struct md_rdev*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct stripe_head*,struct stripe_head_state*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC22 (struct stripe_head*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct md_rdev*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct md_rdev*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (struct md_rdev*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ reconstruct_state_drain_result ; 
 void* reconstruct_state_idle ; 
 scalar_t__ reconstruct_state_prexor_drain_result ; 
 scalar_t__ reconstruct_state_result ; 
 int /*<<< orphan*/  FUNC26 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct stripe_head*,struct stripe_head_state*,int,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (scalar_t__,struct r5conf*,int /*<<< orphan*/ ,struct stripe_head*) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC36 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC38(struct stripe_head *sh)
{
	struct stripe_head_state s;
	struct r5conf *conf = sh->raid_conf;
	int i;
	int prexor;
	int disks = sh->disks;
	struct r5dev *pdev, *qdev;

	FUNC30(&sh->lock);

	if (FUNC35(STRIPE_SYNC_REQUESTED, &sh->state)) {
		FUNC30(&sh->stripe_lock);
		/* Cannot process 'sync' concurrently with 'discard' */
		if (!FUNC35(STRIPE_DISCARD, &sh->state) &&
		    FUNC33(STRIPE_SYNC_REQUESTED, &sh->state)) {
			FUNC29(STRIPE_SYNCING, &sh->state);
			FUNC6(STRIPE_INSYNC, &sh->state);
			FUNC6(STRIPE_REPLACED, &sh->state);
		}
		FUNC31(&sh->stripe_lock);
	}
	FUNC6(STRIPE_HANDLE, &sh->state);
	FUNC6(STRIPE_DELAYED, &sh->state);

	FUNC21("handling stripe %llu, state=%#lx cnt=%d, "
		"pd_idx=%d, qd_idx=%d\n, check:%d, reconstruct:%d\n",
	       (unsigned long long)sh->sector, sh->state,
	       FUNC5(&sh->count), sh->pd_idx, sh->qd_idx,
	       sh->check_state, sh->reconstruct_state);

	FUNC2(sh, &s);

	if (s.handle_bad_blocks) {
		FUNC29(STRIPE_HANDLE, &sh->state);
		goto finish;
	}

	if (FUNC36(s.blocked_rdev)) {
		if (s.syncing || s.expanding || s.expanded ||
		    s.replacing || s.to_write || s.written) {
			FUNC29(STRIPE_HANDLE, &sh->state);
			goto finish;
		}
		/* There is nothing for the blocked_rdev to block */
		FUNC24(s.blocked_rdev, conf->mddev);
		s.blocked_rdev = NULL;
	}

	if (s.to_fill && !FUNC35(STRIPE_BIOFILL_RUN, &sh->state)) {
		FUNC29(STRIPE_OP_BIOFILL, &s.ops_request);
		FUNC29(STRIPE_BIOFILL_RUN, &sh->state);
	}

	FUNC21("locked=%d uptodate=%d to_read=%d"
	       " to_write=%d failed=%d failed_num=%d,%d\n",
	       s.locked, s.uptodate, s.to_read, s.to_write, s.failed,
	       s.failed_num[0], s.failed_num[1]);
	/* check if the array has lost more than max_degraded devices and,
	 * if so, some requests might need to be failed.
	 */
	if (s.failed > conf->max_degraded) {
		sh->check_state = 0;
		sh->reconstruct_state = 0;
		if (s.to_read+s.to_write+s.written)
			FUNC8(conf, sh, &s, disks, &s.return_bi);
		if (s.syncing + s.replacing)
			FUNC9(conf, sh, &s);
	}

	/* Now we check to see if any write operations have recently
	 * completed
	 */
	prexor = 0;
	if (sh->reconstruct_state == reconstruct_state_prexor_drain_result)
		prexor = 1;
	if (sh->reconstruct_state == reconstruct_state_drain_result ||
	    sh->reconstruct_state == reconstruct_state_prexor_drain_result) {
		sh->reconstruct_state = reconstruct_state_idle;

		/* All the 'written' buffers and the parity block are ready to
		 * be written back to disk
		 */
		FUNC0(!FUNC35(R5_UPTODATE, &sh->dev[sh->pd_idx].flags) &&
		       !FUNC35(R5_Discard, &sh->dev[sh->pd_idx].flags));
		FUNC0(sh->qd_idx >= 0 &&
		       !FUNC35(R5_UPTODATE, &sh->dev[sh->qd_idx].flags) &&
		       !FUNC35(R5_Discard, &sh->dev[sh->qd_idx].flags));
		for (i = disks; i--; ) {
			struct r5dev *dev = &sh->dev[i];
			if (FUNC35(R5_LOCKED, &dev->flags) &&
				(i == sh->pd_idx || i == sh->qd_idx ||
				 dev->written)) {
				FUNC21("Writing block %d\n", i);
				FUNC29(R5_Wantwrite, &dev->flags);
				if (prexor)
					continue;
				if (!FUNC35(R5_Insync, &dev->flags) ||
				    ((i == sh->pd_idx || i == sh->qd_idx)  &&
				     s.failed == 0))
					FUNC29(STRIPE_INSYNC, &sh->state);
			}
		}
		if (FUNC33(STRIPE_PREREAD_ACTIVE, &sh->state))
			s.dec_preread_active = 1;
	}

	/*
	 * might be able to return some write requests if the parity blocks
	 * are safe, or on a failed drive
	 */
	pdev = &sh->dev[sh->pd_idx];
	s.p_failed = (s.failed >= 1 && s.failed_num[0] == sh->pd_idx)
		|| (s.failed >= 2 && s.failed_num[1] == sh->pd_idx);
	qdev = &sh->dev[sh->qd_idx];
	s.q_failed = (s.failed >= 1 && s.failed_num[0] == sh->qd_idx)
		|| (s.failed >= 2 && s.failed_num[1] == sh->qd_idx)
		|| conf->level < 6;

	if (s.written &&
	    (s.p_failed || ((FUNC35(R5_Insync, &pdev->flags)
			     && !FUNC35(R5_LOCKED, &pdev->flags)
			     && (FUNC35(R5_UPTODATE, &pdev->flags) ||
				 FUNC35(R5_Discard, &pdev->flags))))) &&
	    (s.q_failed || ((FUNC35(R5_Insync, &qdev->flags)
			     && !FUNC35(R5_LOCKED, &qdev->flags)
			     && (FUNC35(R5_UPTODATE, &qdev->flags) ||
				 FUNC35(R5_Discard, &qdev->flags))))))
		FUNC12(conf, sh, disks, &s.return_bi);

	/* Now we might consider reading some blocks, either to check/generate
	 * parity, or to satisfy requests
	 * or to load a block that is being partially written.
	 */
	if (s.to_read || s.non_overwrite
	    || (conf->level == 6 && s.to_write && s.failed)
	    || (s.syncing && (s.uptodate + s.compute < disks))
	    || s.replacing
	    || s.expanding)
		FUNC15(sh, &s, disks);

	/* Now to consider new write requests and what else, if anything
	 * should be read.  We do not handle new writes when:
	 * 1/ A 'write' operation (copy+xor) is already in flight.
	 * 2/ A 'check' operation is in flight, as it may clobber the parity
	 *    block.
	 */
	if (s.to_write && !sh->reconstruct_state && !sh->check_state)
		FUNC13(conf, sh, &s, disks);

	/* maybe we need to check and possibly fix the parity for this stripe
	 * Any reads will already have been scheduled, so we just see if enough
	 * data is available.  The parity check is held off while parity
	 * dependent operations are in flight.
	 */
	if (sh->check_state ||
	    (s.syncing && s.locked == 0 &&
	     !FUNC35(STRIPE_COMPUTE_RUN, &sh->state) &&
	     !FUNC35(STRIPE_INSYNC, &sh->state))) {
		if (conf->level == 6)
			FUNC11(conf, sh, &s, disks);
		else
			FUNC10(conf, sh, &s, disks);
	}

	if ((s.replacing || s.syncing) && s.locked == 0
	    && !FUNC35(STRIPE_COMPUTE_RUN, &sh->state)
	    && !FUNC35(STRIPE_REPLACED, &sh->state)) {
		/* Write out to replacement devices where possible */
		for (i = 0; i < conf->raid_disks; i++)
			if (FUNC35(R5_NeedReplace, &sh->dev[i].flags)) {
				FUNC1(!FUNC35(R5_UPTODATE, &sh->dev[i].flags));
				FUNC29(R5_WantReplace, &sh->dev[i].flags);
				FUNC29(R5_LOCKED, &sh->dev[i].flags);
				s.locked++;
			}
		if (s.replacing)
			FUNC29(STRIPE_INSYNC, &sh->state);
		FUNC29(STRIPE_REPLACED, &sh->state);
	}
	if ((s.syncing || s.replacing) && s.locked == 0 &&
	    !FUNC35(STRIPE_COMPUTE_RUN, &sh->state) &&
	    FUNC35(STRIPE_INSYNC, &sh->state)) {
		FUNC16(conf->mddev, STRIPE_SECTORS, 1);
		FUNC6(STRIPE_SYNCING, &sh->state);
		if (FUNC33(R5_Overlap, &sh->dev[sh->pd_idx].flags))
			FUNC37(&conf->wait_for_overlap);
	}

	/* If the failed drives are just a ReadError, then we might need
	 * to progress the repair/check process
	 */
	if (s.failed <= conf->max_degraded && !conf->mddev->ro)
		for (i = 0; i < s.failed; i++) {
			struct r5dev *dev = &sh->dev[s.failed_num[i]];
			if (FUNC35(R5_ReadError, &dev->flags)
			    && !FUNC35(R5_LOCKED, &dev->flags)
			    && FUNC35(R5_UPTODATE, &dev->flags)
				) {
				if (!FUNC35(R5_ReWrite, &dev->flags)) {
					FUNC29(R5_Wantwrite, &dev->flags);
					FUNC29(R5_ReWrite, &dev->flags);
					FUNC29(R5_LOCKED, &dev->flags);
					s.locked++;
				} else {
					/* let's read it back */
					FUNC29(R5_Wantread, &dev->flags);
					FUNC29(R5_LOCKED, &dev->flags);
					s.locked++;
				}
			}
		}


	/* Finish reconstruct operations initiated by the expansion process */
	if (sh->reconstruct_state == reconstruct_state_result) {
		struct stripe_head *sh_src
			= FUNC7(conf, sh->sector, 1, 1, 1);
		if (sh_src && FUNC35(STRIPE_EXPAND_SOURCE, &sh_src->state)) {
			/* sh cannot be written until sh_src has been read.
			 * so arrange for sh to be delayed a little
			 */
			FUNC29(STRIPE_DELAYED, &sh->state);
			FUNC29(STRIPE_HANDLE, &sh->state);
			if (!FUNC34(STRIPE_PREREAD_ACTIVE,
					      &sh_src->state))
				FUNC4(&conf->preread_active_stripes);
			FUNC26(sh_src);
			goto finish;
		}
		if (sh_src)
			FUNC26(sh_src);

		sh->reconstruct_state = reconstruct_state_idle;
		FUNC6(STRIPE_EXPANDING, &sh->state);
		for (i = conf->raid_disks; i--; ) {
			FUNC29(R5_Wantwrite, &sh->dev[i].flags);
			FUNC29(R5_LOCKED, &sh->dev[i].flags);
			s.locked++;
		}
	}

	if (s.expanded && FUNC35(STRIPE_EXPANDING, &sh->state) &&
	    !sh->reconstruct_state) {
		/* Need to write out all blocks after computing parity */
		sh->disks = conf->raid_disks;
		FUNC32(sh->sector, conf, 0, sh);
		FUNC28(sh, &s, 1, 1);
	} else if (s.expanded && !sh->reconstruct_state && s.locked == 0) {
		FUNC6(STRIPE_EXPAND_READY, &sh->state);
		FUNC3(&conf->reshape_stripes);
		FUNC37(&conf->wait_for_overlap);
		FUNC16(conf->mddev, STRIPE_SECTORS, 1);
	}

	if (s.expanding && s.locked == 0 &&
	    !FUNC35(STRIPE_COMPUTE_RUN, &sh->state))
		FUNC14(conf, sh);

finish:
	FUNC31(&sh->lock);

	/* wait for this device to become unblocked */
	if (FUNC36(s.blocked_rdev)) {
		if (conf->mddev->external)
			FUNC18(s.blocked_rdev,
						 conf->mddev);
		else
			/* Internal metadata will immediately
			 * be written by raid5d, so we don't
			 * need to wait here.
			 */
			FUNC24(s.blocked_rdev,
					 conf->mddev);
	}

	if (s.handle_bad_blocks)
		for (i = disks; i--; ) {
			struct md_rdev *rdev;
			struct r5dev *dev = &sh->dev[i];
			if (FUNC33(R5_WriteError, &dev->flags)) {
				/* We own a safe reference to the rdev */
				rdev = conf->disks[i].rdev;
				if (!FUNC25(rdev, sh->sector,
							STRIPE_SECTORS, 0))
					FUNC17(conf->mddev, rdev);
				FUNC24(rdev, conf->mddev);
			}
			if (FUNC33(R5_MadeGood, &dev->flags)) {
				rdev = conf->disks[i].rdev;
				FUNC23(rdev, sh->sector,
						     STRIPE_SECTORS, 0);
				FUNC24(rdev, conf->mddev);
			}
			if (FUNC33(R5_MadeGoodRepl, &dev->flags)) {
				rdev = conf->disks[i].replacement;
				if (!rdev)
					/* rdev have been moved down */
					rdev = conf->disks[i].rdev;
				FUNC23(rdev, sh->sector,
						     STRIPE_SECTORS, 0);
				FUNC24(rdev, conf->mddev);
			}
		}

	if (s.ops_request)
		FUNC22(sh, s.ops_request);

	FUNC20(sh, &s);

	if (s.dec_preread_active) {
		/* We delay this until after ops_run_io so that if make_request
		 * is waiting on a flush, it won't continue until the writes
		 * have actually been submitted.
		 */
		FUNC3(&conf->preread_active_stripes);
		if (FUNC5(&conf->preread_active_stripes) <
		    IO_THRESHOLD)
			FUNC19(conf->mddev->thread);
	}

	FUNC27(s.return_bi);
}