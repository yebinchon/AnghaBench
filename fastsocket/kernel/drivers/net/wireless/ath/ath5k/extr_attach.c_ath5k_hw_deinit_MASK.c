#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ath5k_hw {int /*<<< orphan*/ * ah_rf_banks; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_STAT_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ath5k_hw *ah)
{
	FUNC0(ATH_STAT_INVALID, ah->status);

	if (ah->ah_rf_banks != NULL)
		FUNC2(ah->ah_rf_banks);

	FUNC1(ah);

	/* assume interrupts are down */
}