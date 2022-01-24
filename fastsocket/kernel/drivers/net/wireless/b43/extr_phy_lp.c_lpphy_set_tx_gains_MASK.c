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
struct lpphy_tx_gains {int pad; int pga; int gm; int /*<<< orphan*/  dac; } ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct b43_wldev *dev,
			       struct lpphy_tx_gains gains)
{
	u16 rf_gain, pa_gain;

	if (dev->phy.rev < 2) {
		rf_gain = (gains.pad << 7) | (gains.pga << 3) | gains.gm;
		FUNC1(dev, B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL,
				0xF800, rf_gain);
	} else {
		pa_gain = FUNC4(dev);
		FUNC2(dev, B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL,
			      (gains.pga << 8) | gains.gm);
		/*
		 * SPEC FIXME The spec calls for (pa_gain << 8) here, but that
		 * conflicts with the spec for set_pa_gain! Vendor driver bug?
		 */
		FUNC1(dev, FUNC0(0xFB),
				0x8000, gains.pad | (pa_gain << 6));
		FUNC2(dev, FUNC0(0xFC),
			      (gains.pga << 8) | gains.gm);
		FUNC1(dev, FUNC0(0xFD),
				0x8000, gains.pad | (pa_gain << 8));
	}
	FUNC5(dev, gains.dac);
	FUNC3(dev);
}