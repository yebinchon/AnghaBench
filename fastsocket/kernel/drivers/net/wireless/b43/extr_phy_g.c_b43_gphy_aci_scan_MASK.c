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
struct b43_phy {unsigned int channel; scalar_t__ type; scalar_t__ rev; } ;
struct b43_wldev {struct b43_phy phy; } ;

/* Variables and functions */
 scalar_t__ B43_PHYTYPE_G ; 
 int B43_PHY_G_CRS ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (struct b43_wldev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*,unsigned int) ; 

__attribute__((used)) static u8 FUNC12(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	u8 ret[13];
	unsigned int channel = phy->channel;
	unsigned int i, j, start, end;

	if (!((phy->type == B43_PHYTYPE_G) && (phy->rev > 0)))
		return 0;

	FUNC2(dev);
	FUNC7(dev);
	FUNC3(dev, 0x0802, 0xFFFC);
	FUNC3(dev, B43_PHY_G_CRS, 0x7FFF);
	FUNC9(dev, 3, 8, 1);

	start = (channel - 5 > 0) ? channel - 5 : 1;
	end = (channel + 5 < 14) ? channel + 5 : 13;

	for (i = start; i <= end; i++) {
		if (FUNC0(channel - i) > 2)
			ret[i - 1] = FUNC1(dev, i);
	}
	FUNC11(dev, channel);
	FUNC4(dev, 0x0802, 0xFFFC, 0x0003);
	FUNC3(dev, 0x0403, 0xFFF8);
	FUNC5(dev, B43_PHY_G_CRS, 0x8000);
	FUNC10(dev);
	for (i = 0; i < 13; i++) {
		if (!ret[i])
			continue;
		end = (i + 5 < 13) ? i + 5 : 13;
		for (j = i; j < end; j++)
			ret[j] = 1;
	}
	FUNC8(dev);
	FUNC6(dev);

	return ret[channel - 1];
}