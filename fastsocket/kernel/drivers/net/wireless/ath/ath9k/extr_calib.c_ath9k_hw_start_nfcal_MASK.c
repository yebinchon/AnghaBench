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
struct TYPE_2__ {int nfcal_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL_ENABLE_NF ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL_NF ; 
 int /*<<< orphan*/  AR_PHY_AGC_CONTROL_NO_UPDATE_NF ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct ath_hw *ah, bool update)
{
	if (ah->caldata)
		ah->caldata->nfcal_pending = true;

	FUNC1(ah, AR_PHY_AGC_CONTROL,
		    AR_PHY_AGC_CONTROL_ENABLE_NF);

	if (update)
		FUNC0(ah, AR_PHY_AGC_CONTROL,
		    AR_PHY_AGC_CONTROL_NO_UPDATE_NF);
	else
		FUNC1(ah, AR_PHY_AGC_CONTROL,
		    AR_PHY_AGC_CONTROL_NO_UPDATE_NF);

	FUNC1(ah, AR_PHY_AGC_CONTROL, AR_PHY_AGC_CONTROL_NF);
}