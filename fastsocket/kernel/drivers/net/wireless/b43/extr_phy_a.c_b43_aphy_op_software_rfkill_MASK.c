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
struct b43_phy {scalar_t__ radio_on; } ;
struct b43_wldev {struct b43_phy phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev,
					bool blocked)
{
	struct b43_phy *phy = &dev->phy;

	if (!blocked) {
		if (phy->radio_on)
			return;
		FUNC3(dev, 0x0004, 0x00C0);
		FUNC3(dev, 0x0005, 0x0008);
		FUNC0(dev, 0x0010, 0xFFF7);
		FUNC0(dev, 0x0011, 0xFFF7);
		FUNC2(dev);
	} else {
		FUNC3(dev, 0x0004, 0x00FF);
		FUNC3(dev, 0x0005, 0x00FB);
		FUNC1(dev, 0x0010, 0x0008);
		FUNC1(dev, 0x0011, 0x0008);
	}
}