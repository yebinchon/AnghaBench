#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct lcn_tx_gains {int gm_gain; int pga_gain; int pad_gain; scalar_t__ dac_gain; } ;
struct TYPE_3__ {TYPE_2__* lcn; } ;
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_1__ phy; } ;
struct TYPE_4__ {int /*<<< orphan*/  hw_pwr_ctl_capable; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_SENSE_TEMP ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,struct lcn_tx_gains*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(struct b43_wldev *dev)
{
	struct lcn_tx_gains tx_gains;
	u8 bbmult;

	FUNC2(dev);

	if (!dev->phy.lcn->hw_pwr_ctl_capable) {
		if (FUNC0(dev->wl) == IEEE80211_BAND_2GHZ) {
			tx_gains.gm_gain = 4;
			tx_gains.pga_gain = 12;
			tx_gains.pad_gain = 12;
			tx_gains.dac_gain = 0;
			bbmult = 150;
		} else {
			tx_gains.gm_gain = 7;
			tx_gains.pga_gain = 15;
			tx_gains.pad_gain = 14;
			tx_gains.dac_gain = 0;
			bbmult = 150;
		}
		FUNC5(dev, &tx_gains);
		FUNC4(dev, bbmult);
		FUNC3(dev, B43_SENSE_TEMP);
	} else {
		FUNC6(dev->wl, "TX power control not supported for this HW\n");
	}

	FUNC1(dev);
}