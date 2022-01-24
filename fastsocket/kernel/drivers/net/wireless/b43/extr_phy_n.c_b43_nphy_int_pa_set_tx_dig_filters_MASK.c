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
typedef  int u16 ;
struct TYPE_2__ {int channel; scalar_t__ is_40mhz; } ;
struct b43_wldev {TYPE_1__ phy; int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 
 scalar_t__ IEEE80211_BAND_5GHZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** tbl_tx_filter_coef_rev4 ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev)
{
	int i, j;
	/* B43_NPHY_TXF_20CO_S0A1, B43_NPHY_TXF_40CO_S0A1, unknown */
	static const u16 offset[] = { 0x186, 0x195, 0x2C5 };

	for (i = 0; i < 3; i++)
		for (j = 0; j < 15; j++)
			FUNC2(dev, FUNC0(offset[i] + j),
					tbl_tx_filter_coef_rev4[i][j]);

	if (dev->phy.is_40mhz) {
		for (j = 0; j < 15; j++)
			FUNC2(dev, FUNC0(offset[0] + j),
					tbl_tx_filter_coef_rev4[3][j]);
	} else if (FUNC1(dev->wl) == IEEE80211_BAND_5GHZ) {
		for (j = 0; j < 15; j++)
			FUNC2(dev, FUNC0(offset[0] + j),
					tbl_tx_filter_coef_rev4[5][j]);
	}

	if (dev->phy.channel == 14)
		for (j = 0; j < 15; j++)
			FUNC2(dev, FUNC0(offset[0] + j),
					tbl_tx_filter_coef_rev4[6][j]);
}