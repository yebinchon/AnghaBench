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
struct b43legacy_phy {int analog; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;

/* Variables and functions */
 int FUNC0 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int,int) ; 
 int FUNC2 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int,int) ; 

void FUNC4(struct b43legacy_wldev *dev,
					    u16 bbatt)
{
	struct b43legacy_phy *phy = &dev->phy;
	u16 value;

	if (phy->analog == 0) {
		value = (FUNC2(dev, 0x03E6) & 0xFFF0);
		value |= (bbatt & 0x000F);
		FUNC3(dev, 0x03E6, value);
		return;
	}

	if (phy->analog > 1) {
		value = FUNC0(dev, 0x0060) & 0xFFC3;
		value |= (bbatt << 2) & 0x003C;
	} else {
		value = FUNC0(dev, 0x0060) & 0xFF87;
		value |= (bbatt << 3) & 0x0078;
	}
	FUNC1(dev, 0x0060, value);
}