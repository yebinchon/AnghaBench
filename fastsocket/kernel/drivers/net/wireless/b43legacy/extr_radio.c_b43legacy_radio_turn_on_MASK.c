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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int valid; int rfover; int rfoverval; } ;
struct b43legacy_phy {int radio_on; int type; int /*<<< orphan*/  channel; TYPE_1__ radio_off_context; int /*<<< orphan*/  gmode; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  B43legacy_PHYTYPE_B 129 
#define  B43legacy_PHYTYPE_G 128 
 int B43legacy_PHY_RFOVER ; 
 int B43legacy_PHY_RFOVERVAL ; 
 int /*<<< orphan*/  B43legacy_RADIO_DEFAULT_CHANNEL_BG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,int,int) ; 
 int FUNC3 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;
	int err;
	u8 channel;

	FUNC4();

	if (phy->radio_on)
		return;

	switch (phy->type) {
	case B43legacy_PHYTYPE_B:
	case B43legacy_PHYTYPE_G:
		FUNC2(dev, 0x0015, 0x8000);
		FUNC2(dev, 0x0015, 0xCC00);
		FUNC2(dev, 0x0015,
				    (phy->gmode ? 0x00C0 : 0x0000));
		if (phy->radio_off_context.valid) {
			/* Restore the RFover values. */
			FUNC2(dev, B43legacy_PHY_RFOVER,
					    phy->radio_off_context.rfover);
			FUNC2(dev, B43legacy_PHY_RFOVERVAL,
					    phy->radio_off_context.rfoverval);
			phy->radio_off_context.valid = false;
		}
		channel = phy->channel;
		err = FUNC3(dev,
					B43legacy_RADIO_DEFAULT_CHANNEL_BG, 1);
		err |= FUNC3(dev, channel, 0);
		FUNC1(err);
		break;
	default:
		FUNC0(1);
	}
	phy->radio_on = true;
}