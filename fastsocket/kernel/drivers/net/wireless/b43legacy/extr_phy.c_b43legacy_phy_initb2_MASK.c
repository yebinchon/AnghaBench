#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
struct b43legacy_phy {int radio_ver; int /*<<< orphan*/  channel; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;

/* Variables and functions */
 int B43legacy_MMIO_CHANNEL_EXT ; 
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43legacy_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43legacy_wldev*,int,int) ; 

__attribute__((used)) static void FUNC8(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;
	u16 offset;
	int val;

	FUNC7(dev, 0x03EC, 0x3F22);
	FUNC2(dev, 0x0020, 0x301C);
	FUNC2(dev, 0x0026, 0x0000);
	FUNC2(dev, 0x0030, 0x00C6);
	FUNC2(dev, 0x0088, 0x3E00);
	val = 0x3C3D;
	for (offset = 0x0089; offset < 0x00A7; offset++) {
		FUNC2(dev, offset, val);
		val -= 0x0202;
	}
	FUNC2(dev, 0x03E4, 0x3000);
	FUNC4(dev, phy->channel, 0);
	if (phy->radio_ver != 0x2050) {
		FUNC6(dev, 0x0075, 0x0080);
		FUNC6(dev, 0x0079, 0x0081);
	}
	FUNC6(dev, 0x0050, 0x0020);
	FUNC6(dev, 0x0050, 0x0023);
	if (phy->radio_ver == 0x2050) {
		FUNC6(dev, 0x0050, 0x0020);
		FUNC6(dev, 0x005A, 0x0070);
		FUNC6(dev, 0x005B, 0x007B);
		FUNC6(dev, 0x005C, 0x00B0);
		FUNC6(dev, 0x007A, 0x000F);
		FUNC2(dev, 0x0038, 0x0677);
		FUNC3(dev);
	}
	FUNC2(dev, 0x0014, 0x0080);
	FUNC2(dev, 0x0032, 0x00CA);
	FUNC2(dev, 0x0032, 0x00CC);
	FUNC2(dev, 0x0035, 0x07C2);
	FUNC1(dev);
	FUNC2(dev, 0x0026, 0xCC00);
	if (phy->radio_ver != 0x2050)
		FUNC2(dev, 0x0026, 0xCE00);
	FUNC7(dev, B43legacy_MMIO_CHANNEL_EXT, 0x1000);
	FUNC2(dev, 0x002A, 0x88A3);
	if (phy->radio_ver != 0x2050)
		FUNC2(dev, 0x002A, 0x88C2);
	FUNC5(dev, 0xFFFF, 0xFFFF, 0xFFFF);
	FUNC0(dev);
}