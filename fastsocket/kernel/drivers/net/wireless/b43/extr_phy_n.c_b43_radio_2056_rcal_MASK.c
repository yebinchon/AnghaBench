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
typedef  int u8 ;
typedef  int u16 ;
struct b43_phy {int rev; } ;
struct b43_wldev {int /*<<< orphan*/  wl; struct b43_phy phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B2056_SYN_PLL_MAST2 ; 
 int /*<<< orphan*/  B2056_SYN_RCAL_CODE_OUT ; 
 int /*<<< orphan*/  B2056_SYN_RCAL_MASTER ; 
 int FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static u8 FUNC5(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	u16 mast2, tmp;

	if (phy->rev != 3)
		return 0;

	mast2 = FUNC0(dev, B2056_SYN_PLL_MAST2);
	FUNC2(dev, B2056_SYN_PLL_MAST2, mast2 | 0x7);

	FUNC4(10);
	FUNC2(dev, B2056_SYN_RCAL_MASTER, 0x01);
	FUNC4(10);
	FUNC2(dev, B2056_SYN_RCAL_MASTER, 0x09);

	if (!FUNC1(dev, B2056_SYN_RCAL_CODE_OUT, 0x80, 0x80, 100,
				  1000000)) {
		FUNC3(dev->wl, "Radio recalibration timeout\n");
		return 0;
	}

	FUNC2(dev, B2056_SYN_RCAL_MASTER, 0x01);
	tmp = FUNC0(dev, B2056_SYN_RCAL_CODE_OUT);
	FUNC2(dev, B2056_SYN_RCAL_MASTER, 0x00);

	FUNC2(dev, B2056_SYN_PLL_MAST2, mast2);

	return tmp & 0x1f;
}