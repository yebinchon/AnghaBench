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
struct ath_hw {TYPE_1__* caldata; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rtt_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

bool FUNC9(struct ath_hw *ah, struct ath9k_channel *chan)
{
	bool restore;

	if (!ah->caldata)
		return false;

	if (!ah->caldata->rtt_done)
		return false;

	FUNC1(ah);
	FUNC4(ah, 0x10);

	if (!FUNC7(ah)) {
		FUNC8(FUNC5(ah), "Could not stop baseband\n");
		restore = false;
		goto fail;
	}

	FUNC3(ah);
	restore = FUNC2(ah);

fail:
	FUNC6(ah);
	FUNC0(ah);
	return restore;
}