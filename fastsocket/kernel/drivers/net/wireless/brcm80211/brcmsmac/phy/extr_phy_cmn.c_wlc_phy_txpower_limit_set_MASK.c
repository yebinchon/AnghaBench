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
typedef  int /*<<< orphan*/  u16 ;
struct txpwr_limits {scalar_t__* ofdm; scalar_t__* mcs_20_siso; } ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; scalar_t__* txpwr_limit; } ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 int BRCMS_NUM_RATES_MCS_1_STREAM ; 
 scalar_t__ FUNC0 (struct brcms_phy*) ; 
 int TXP_FIRST_OFDM_20_CDD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,struct txpwr_limits*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct brcms_phy_pub *ppi, struct txpwr_limits *txpwr,
			  u16 chanspec)
{
	struct brcms_phy *pi = (struct brcms_phy *) ppi;

	FUNC5(pi, txpwr, chanspec);

	if (FUNC0(pi)) {
		int i, j;
		for (i = TXP_FIRST_OFDM_20_CDD, j = 0;
		     j < BRCMS_NUM_RATES_MCS_1_STREAM; i++, j++) {
			if (txpwr->mcs_20_siso[j])
				pi->txpwr_limit[i] = txpwr->mcs_20_siso[j];
			else
				pi->txpwr_limit[i] = txpwr->ofdm[j];
		}
	}

	FUNC2(pi->sh->physhim);

	FUNC4(pi);
	FUNC3(pi);
	FUNC1(pi->sh->physhim);
}