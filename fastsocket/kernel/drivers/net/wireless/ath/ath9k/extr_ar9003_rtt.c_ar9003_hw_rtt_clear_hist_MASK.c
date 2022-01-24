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
struct TYPE_2__ {int rtt_done; } ;

/* Variables and functions */
 int AR9300_MAX_CHAINS ; 
 int MAX_RTT_TABLE_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int,int,int /*<<< orphan*/ ) ; 

void FUNC1(struct ath_hw *ah)
{
	int chain, i;

	for (chain = 0; chain < AR9300_MAX_CHAINS; chain++) {
		if (!(ah->rxchainmask & (1 << chain)))
			continue;
		for (i = 0; i < MAX_RTT_TABLE_ENTRY; i++)
			FUNC0(ah, chain, i, 0);
	}

	if (ah->caldata)
		ah->caldata->rtt_done = false;
}