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
struct ath_hw {int imask; int /*<<< orphan*/  intr_ref_cnt; } ;

/* Variables and functions */
 int ATH9K_INT_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3(struct ath_hw *ah)
{
	if (!(ah->imask & ATH9K_INT_GLOBAL))
		FUNC2(&ah->intr_ref_cnt, -1);
	else
		FUNC1(&ah->intr_ref_cnt);

	FUNC0(ah);
}