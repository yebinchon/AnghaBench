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
struct b43legacy_phy {scalar_t__ gmode; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;

/* Variables and functions */
 int FUNC0 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static inline
u16 FUNC6(struct b43legacy_wldev *dev,
					u16 control)
{
	struct b43legacy_phy *phy = &dev->phy;
	u16 ret;
	unsigned long flags;

	FUNC4(flags);
	if (phy->gmode) {
		FUNC1(dev, 0x15, 0xE300);
		control <<= 8;
		FUNC1(dev, 0x0812, control | 0x00B0);
		FUNC5(5);
		FUNC1(dev, 0x0812, control | 0x00B2);
		FUNC5(2);
		FUNC1(dev, 0x0812, control | 0x00B3);
		FUNC5(4);
		FUNC1(dev, 0x0015, 0xF300);
		FUNC5(8);
	} else {
		FUNC1(dev, 0x0015, control | 0xEFA0);
		FUNC5(2);
		FUNC1(dev, 0x0015, control | 0xEFE0);
		FUNC5(4);
		FUNC1(dev, 0x0015, control | 0xFFE0);
		FUNC5(8);
	}
	ret = FUNC0(dev, 0x002D);
	FUNC3(flags);
	FUNC2();

	return ret;
}