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
struct ath5k_hw {scalar_t__ ah_version; } ;

/* Variables and functions */
 scalar_t__ AR5K_AR5210 ; 
 int /*<<< orphan*/  AR5K_ISR ; 
 int AR5K_NUM_TX_QUEUES ; 
 int AR5K_NUM_TX_QUEUES_NOQCU ; 
 int /*<<< orphan*/  AR5K_PISR ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ath5k_hw*) ; 
 int FUNC4 (struct ath5k_hw*,int) ; 

int
FUNC5(struct ath5k_hw *ah)
{
	int i, qmax, err;
	err = 0;

	/* Disable interrupts */
	FUNC2(ah, 0);

	/* Stop rx dma */
	err = FUNC3(ah);
	if (err)
		return err;

	/* Clear any pending interrupts
	 * and disable tx dma */
	if (ah->ah_version != AR5K_AR5210) {
		FUNC1(ah, 0xffffffff, AR5K_PISR);
		qmax = AR5K_NUM_TX_QUEUES;
	} else {
		/* PISR/SISR Not available on 5210 */
		FUNC0(ah, AR5K_ISR);
		qmax = AR5K_NUM_TX_QUEUES_NOQCU;
	}

	for (i = 0; i < qmax; i++) {
		err = FUNC4(ah, i);
		/* -EINVAL -> queue inactive */
		if (err && err != -EINVAL)
			return err;
	}

	return 0;
}