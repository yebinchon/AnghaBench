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
typedef  int u32 ;
typedef  int u16 ;
struct b43_phy {int type; int radio_ver; int radio_rev; } ;
struct b43_wldev {TYPE_1__* dev; struct b43_phy phy; } ;
struct TYPE_2__ {int core_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_MMIO_IFSSTAT ; 
 int /*<<< orphan*/  B43_MMIO_TXE0_AUX ; 
 int /*<<< orphan*/  B43_MMIO_TXE0_CTL ; 
 int /*<<< orphan*/  B43_MMIO_TXE0_PHYCTL ; 
 int /*<<< orphan*/  B43_MMIO_TXE0_PHYCTL1 ; 
 int /*<<< orphan*/  B43_MMIO_TXE0_STATUS ; 
 int /*<<< orphan*/  B43_MMIO_TXE0_WM_0 ; 
 int /*<<< orphan*/  B43_MMIO_TXE0_WM_1 ; 
 int /*<<< orphan*/  B43_MMIO_WEPCTL ; 
 int /*<<< orphan*/  B43_MMIO_XMTSEL ; 
 int /*<<< orphan*/  B43_MMIO_XMTTPLATETXPTR ; 
 int /*<<< orphan*/  B43_MMIO_XMTTXCNT ; 
#define  B43_PHYTYPE_LCN 130 
#define  B43_PHYTYPE_LP 129 
#define  B43_PHYTYPE_N 128 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,unsigned int,int) ; 
 int FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct b43_wldev *dev, bool ofdm, bool pa_on)
{
	struct b43_phy *phy = &dev->phy;
	unsigned int i, max_loop;
	u16 value;
	u32 buffer[5] = {
		0x00000000,
		0x00D40000,
		0x00000000,
		0x01000000,
		0x00000000,
	};

	if (ofdm) {
		max_loop = 0x1E;
		buffer[0] = 0x000201CC;
	} else {
		max_loop = 0xFA;
		buffer[0] = 0x000B846E;
	}

	for (i = 0; i < 5; i++)
		FUNC1(dev, i * 4, buffer[i]);

	FUNC3(dev, B43_MMIO_XMTSEL, 0x0000);

	if (dev->dev->core_rev < 11)
		FUNC3(dev, B43_MMIO_WEPCTL, 0x0000);
	else
		FUNC3(dev, B43_MMIO_WEPCTL, 0x0100);

	value = (ofdm ? 0x41 : 0x40);
	FUNC3(dev, B43_MMIO_TXE0_PHYCTL, value);
	if (phy->type == B43_PHYTYPE_N || phy->type == B43_PHYTYPE_LP ||
	    phy->type == B43_PHYTYPE_LCN)
		FUNC3(dev, B43_MMIO_TXE0_PHYCTL1, 0x1A02);

	FUNC3(dev, B43_MMIO_TXE0_WM_0, 0x0000);
	FUNC3(dev, B43_MMIO_TXE0_WM_1, 0x0000);

	FUNC3(dev, B43_MMIO_XMTTPLATETXPTR, 0x0000);
	FUNC3(dev, B43_MMIO_XMTTXCNT, 0x0014);
	FUNC3(dev, B43_MMIO_XMTSEL, 0x0826);
	FUNC3(dev, B43_MMIO_TXE0_CTL, 0x0000);

	if (!pa_on && phy->type == B43_PHYTYPE_N)
		; /*b43_nphy_pa_override(dev, false) */

	switch (phy->type) {
	case B43_PHYTYPE_N:
	case B43_PHYTYPE_LCN:
		FUNC3(dev, B43_MMIO_TXE0_AUX, 0x00D0);
		break;
	case B43_PHYTYPE_LP:
		FUNC3(dev, B43_MMIO_TXE0_AUX, 0x0050);
		break;
	default:
		FUNC3(dev, B43_MMIO_TXE0_AUX, 0x0030);
	}
	FUNC2(dev, B43_MMIO_TXE0_AUX);

	if (phy->radio_ver == 0x2050 && phy->radio_rev <= 0x5)
		FUNC0(dev, 0x0051, 0x0017);
	for (i = 0x00; i < max_loop; i++) {
		value = FUNC2(dev, B43_MMIO_TXE0_STATUS);
		if (value & 0x0080)
			break;
		FUNC4(10);
	}
	for (i = 0x00; i < 0x0A; i++) {
		value = FUNC2(dev, B43_MMIO_TXE0_STATUS);
		if (value & 0x0400)
			break;
		FUNC4(10);
	}
	for (i = 0x00; i < 0x19; i++) {
		value = FUNC2(dev, B43_MMIO_IFSSTAT);
		if (!(value & 0x0100))
			break;
		FUNC4(10);
	}
	if (phy->radio_ver == 0x2050 && phy->radio_rev <= 0x5)
		FUNC0(dev, 0x0051, 0x0037);
}