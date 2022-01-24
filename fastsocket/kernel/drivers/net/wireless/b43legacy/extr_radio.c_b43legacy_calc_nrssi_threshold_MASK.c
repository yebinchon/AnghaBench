#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct b43legacy_phy {int type; int radio_ver; int radio_rev; int* nrssi; int /*<<< orphan*/  aci_enable; int /*<<< orphan*/  aci_wlan_automatic; int /*<<< orphan*/  interfmode; int /*<<< orphan*/  gmode; } ;
struct b43legacy_wldev {TYPE_3__* dev; struct b43legacy_phy phy; } ;
typedef  int s32 ;
typedef  int s16 ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_4__ {int boardflags_lo; } ;
struct TYPE_5__ {TYPE_1__ sprom; } ;

/* Variables and functions */
 int B43legacy_BFL_RSSI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  B43legacy_PHYTYPE_B 129 
#define  B43legacy_PHYTYPE_G 128 
 int /*<<< orphan*/  B43legacy_RADIO_INTERFMODE_NONWLAN ; 
 int FUNC1 (struct b43legacy_wldev*,int) ; 
 int FUNC2 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int,int) ; 
 int FUNC4 (int,int,int) ; 

void FUNC5(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;
	s32 threshold;
	s32 a;
	s32 b;
	s16 tmp16;
	u16 tmp_u16;

	switch (phy->type) {
	case B43legacy_PHYTYPE_B: {
		if (phy->radio_ver != 0x2050)
			return;
		if (!(dev->dev->bus->sprom.boardflags_lo &
		    B43legacy_BFL_RSSI))
			return;

		if (phy->radio_rev >= 6) {
			threshold = (phy->nrssi[1] - phy->nrssi[0]) * 32;
			threshold += 20 * (phy->nrssi[0] + 1);
			threshold /= 40;
		} else
			threshold = phy->nrssi[1] - 5;

		threshold = FUNC4(threshold, 0, 0x3E);
		FUNC2(dev, 0x0020); /* dummy read */
		FUNC3(dev, 0x0020, (((u16)threshold) << 8)
				    | 0x001C);

		if (phy->radio_rev >= 6) {
			FUNC3(dev, 0x0087, 0x0E0D);
			FUNC3(dev, 0x0086, 0x0C0B);
			FUNC3(dev, 0x0085, 0x0A09);
			FUNC3(dev, 0x0084, 0x0808);
			FUNC3(dev, 0x0083, 0x0808);
			FUNC3(dev, 0x0082, 0x0604);
			FUNC3(dev, 0x0081, 0x0302);
			FUNC3(dev, 0x0080, 0x0100);
		}
		break;
	}
	case B43legacy_PHYTYPE_G:
		if (!phy->gmode ||
		    !(dev->dev->bus->sprom.boardflags_lo &
		    B43legacy_BFL_RSSI)) {
			tmp16 = FUNC1(dev, 0x20);
			if (tmp16 >= 0x20)
				tmp16 -= 0x40;
			if (tmp16 < 3)
				FUNC3(dev, 0x048A,
						    (FUNC2(dev,
						    0x048A) & 0xF000) | 0x09EB);
			else
				FUNC3(dev, 0x048A,
						    (FUNC2(dev,
						    0x048A) & 0xF000) | 0x0AED);
		} else {
			if (phy->interfmode ==
			    B43legacy_RADIO_INTERFMODE_NONWLAN) {
				a = 0xE;
				b = 0xA;
			} else if (!phy->aci_wlan_automatic &&
				    phy->aci_enable) {
				a = 0x13;
				b = 0x12;
			} else {
				a = 0xE;
				b = 0x11;
			}

			a = a * (phy->nrssi[1] - phy->nrssi[0]);
			a += (phy->nrssi[0] << 6);
			if (a < 32)
				a += 31;
			else
				a += 32;
			a = a >> 6;
			a = FUNC4(a, -31, 31);

			b = b * (phy->nrssi[1] - phy->nrssi[0]);
			b += (phy->nrssi[0] << 6);
			if (b < 32)
				b += 31;
			else
				b += 32;
			b = b >> 6;
			b = FUNC4(b, -31, 31);

			tmp_u16 = FUNC2(dev, 0x048A) & 0xF000;
			tmp_u16 |= ((u32)b & 0x0000003F);
			tmp_u16 |= (((u32)a & 0x0000003F) << 6);
			FUNC3(dev, 0x048A, tmp_u16);
		}
		break;
	default:
		FUNC0(1);
	}
}