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
typedef  int /*<<< orphan*/  u8 ;
struct ath5k_hw {int /*<<< orphan*/  ah_current_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_TXPOWER ; 
 int FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(struct ath5k_hw *ah, u8 txpower)
{
	FUNC0(ah, ATH5K_DEBUG_TXPOWER,
		"changing txpower to %d\n", txpower);

	return FUNC1(ah, ah->ah_current_channel, txpower);
}