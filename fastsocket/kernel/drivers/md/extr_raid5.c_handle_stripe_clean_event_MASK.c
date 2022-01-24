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
struct stripe_head {size_t pd_idx; size_t qd_idx; int /*<<< orphan*/  state; struct r5dev* dev; int /*<<< orphan*/  sector; } ;
struct r5dev {scalar_t__ sector; int /*<<< orphan*/  flags; struct bio* written; } ;
struct r5conf {TYPE_1__* mddev; int /*<<< orphan*/  pending_full_writes; } ;
struct bio {scalar_t__ bi_sector; struct bio* bi_next; } ;
struct TYPE_2__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  R5_Discard ; 
 int /*<<< orphan*/  R5_LOCKED ; 
 int /*<<< orphan*/  R5_UPTODATE ; 
 int /*<<< orphan*/  STRIPE_DEGRADED ; 
 int /*<<< orphan*/  STRIPE_DISCARD ; 
 int /*<<< orphan*/  STRIPE_FULL_WRITE ; 
 int /*<<< orphan*/  STRIPE_HANDLE ; 
 scalar_t__ STRIPE_SECTORS ; 
 int /*<<< orphan*/  STRIPE_SYNC_REQUESTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 struct bio* FUNC6 (struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct r5conf *conf,
	struct stripe_head *sh, int disks, struct bio **return_bi)
{
	int i;
	struct r5dev *dev;
	int discard_pending = 0;

	for (i = disks; i--; )
		if (sh->dev[i].written) {
			dev = &sh->dev[i];
			if (!FUNC10(R5_LOCKED, &dev->flags) &&
			    (FUNC10(R5_UPTODATE, &dev->flags) ||
			     FUNC10(R5_Discard, &dev->flags))) {
				/* We can return any write requests */
				struct bio *wbi, *wbi2;
				FUNC5("Return write for disc %d\n", i);
				if (FUNC9(R5_Discard, &dev->flags))
					FUNC2(R5_UPTODATE, &dev->flags);
				wbi = dev->written;
				dev->written = NULL;
				while (wbi && wbi->bi_sector <
					dev->sector + STRIPE_SECTORS) {
					wbi2 = FUNC6(wbi, dev->sector);
					if (!FUNC7(wbi)) {
						FUNC4(conf->mddev);
						wbi->bi_next = *return_bi;
						*return_bi = wbi;
					}
					wbi = wbi2;
				}
				FUNC1(conf->mddev->bitmap, sh->sector,
						STRIPE_SECTORS,
					 !FUNC10(STRIPE_DEGRADED, &sh->state),
						0);
			} else if (FUNC10(R5_Discard, &dev->flags))
				discard_pending = 1;
		}
	if (!discard_pending &&
	    FUNC10(R5_Discard, &sh->dev[sh->pd_idx].flags)) {
		FUNC2(R5_Discard, &sh->dev[sh->pd_idx].flags);
		FUNC2(R5_UPTODATE, &sh->dev[sh->pd_idx].flags);
		if (sh->qd_idx >= 0) {
			FUNC2(R5_Discard, &sh->dev[sh->qd_idx].flags);
			FUNC2(R5_UPTODATE, &sh->dev[sh->qd_idx].flags);
		}
		/* now that discard is done we can proceed with any sync */
		FUNC2(STRIPE_DISCARD, &sh->state);
		if (FUNC10(STRIPE_SYNC_REQUESTED, &sh->state))
			FUNC8(STRIPE_HANDLE, &sh->state);

	}

	if (FUNC9(STRIPE_FULL_WRITE, &sh->state))
		if (FUNC0(&conf->pending_full_writes))
			FUNC3(conf->mddev->thread);
}