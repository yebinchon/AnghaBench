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
struct ath_hw {int rxchainmask; TYPE_1__* caldata; } ;
struct TYPE_2__ {int rtt_done; int /*<<< orphan*/ ** rtt_table; } ;

/* Variables and functions */
 int AR9300_MAX_CHAINS ; 
 int /*<<< orphan*/  CALIBRATE ; 
 int MAX_RTT_TABLE_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 

void FUNC3(struct ath_hw *ah)
{
	int chain, i;

	for (chain = 0; chain < AR9300_MAX_CHAINS; chain++) {
		if (!(ah->rxchainmask & (1 << chain)))
			continue;
		for (i = 0; i < MAX_RTT_TABLE_ENTRY; i++) {
			ah->caldata->rtt_table[chain][i] =
				FUNC0(ah, chain, i);
			FUNC2(FUNC1(ah), CALIBRATE,
				"RTT value at idx %d, chain %d is: 0x%x\n",
				i, chain, ah->caldata->rtt_table[chain][i]);
		}
	}

	ah->caldata->rtt_done = true;
}