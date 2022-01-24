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
struct ath5k_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_CCK_FIL_CNT ; 
 int /*<<< orphan*/  AR5K_OFDM_FIL_CNT ; 
 int /*<<< orphan*/  AR5K_PHYERR_CNT1 ; 
 int /*<<< orphan*/  AR5K_PHYERR_CNT1_MASK ; 
 int /*<<< orphan*/  AR5K_PHYERR_CNT2 ; 
 int /*<<< orphan*/  AR5K_PHYERR_CNT2_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct ath5k_hw *ah)
{
	FUNC0(ah, 0, AR5K_PHYERR_CNT1);
	FUNC0(ah, 0, AR5K_PHYERR_CNT2);
	FUNC0(ah, 0, AR5K_PHYERR_CNT1_MASK);
	FUNC0(ah, 0, AR5K_PHYERR_CNT2_MASK);

	/* not in use */
	FUNC0(ah, 0, AR5K_OFDM_FIL_CNT);
	FUNC0(ah, 0, AR5K_CCK_FIL_CNT);
}