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
struct mmc_omap_slot {int /*<<< orphan*/  cover_timer; TYPE_1__* mmc; } ;
struct TYPE_2__ {int /*<<< orphan*/ * card; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_MMC_COVER_POLL_DELAY ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mmc_omap_slot*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(unsigned long param)
{
	struct mmc_omap_slot *slot = (struct mmc_omap_slot *)param;
	int cover_open = FUNC2(slot);

	FUNC1(slot->mmc, 0);
	if (!cover_open)
		return;

	/*
	 * If no card is inserted, we postpone polling until
	 * the cover has been closed.
	 */
	if (slot->mmc->card == NULL || !FUNC0(slot->mmc->card))
		return;

	FUNC3(&slot->cover_timer,
		  jiffies + FUNC4(OMAP_MMC_COVER_POLL_DELAY));
}