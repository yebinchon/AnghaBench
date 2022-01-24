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
struct b43_phy {int radio_ver; int radio_rev; int channel; } ;
struct b43_wldev {TYPE_2__* dev; struct b43_phy phy; } ;
struct TYPE_4__ {TYPE_1__* bus_sprom; } ;
struct TYPE_3__ {int boardflags_lo; } ;

/* Variables and functions */
 int B43_BFL_RSSI ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;

	if (!(dev->dev->bus_sprom->boardflags_lo & B43_BFL_RSSI))
		return;

	FUNC2(dev);
	FUNC0(dev);
	if ((phy->radio_ver == 0x2050) && (phy->radio_rev == 8)) {
		u8 old_chan = phy->channel;

		/* VCO Calibration */
		if (old_chan >= 8)
			FUNC3(dev, 1);
		else
			FUNC3(dev, 13);
		FUNC3(dev, old_chan);
	}
	FUNC1(dev);
}