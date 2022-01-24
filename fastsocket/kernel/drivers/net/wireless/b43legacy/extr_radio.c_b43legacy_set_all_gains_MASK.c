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
struct b43legacy_phy {int rev; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int,int) ; 
 int FUNC2 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct b43legacy_wldev *dev,
				  s16 first, s16 second, s16 third)
{
	struct b43legacy_phy *phy = &dev->phy;
	u16 i;
	u16 start = 0x08;
	u16 end = 0x18;
	u16 offset = 0x0400;
	u16 tmp;

	if (phy->rev <= 1) {
		offset = 0x5000;
		start = 0x10;
		end = 0x20;
	}

	for (i = 0; i < 4; i++)
		FUNC1(dev, offset + i, first);

	for (i = start; i < end; i++)
		FUNC1(dev, offset + i, second);

	if (third != -1) {
		tmp = ((u16)third << 14) | ((u16)third << 6);
		FUNC3(dev, 0x04A0,
				    (FUNC2(dev, 0x04A0) & 0xBFBF)
				    | tmp);
		FUNC3(dev, 0x04A1,
				    (FUNC2(dev, 0x04A1) & 0xBFBF)
				    | tmp);
		FUNC3(dev, 0x04A2,
				    (FUNC2(dev, 0x04A2) & 0xBFBF)
				    | tmp);
	}
	FUNC0(dev);
}