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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*,int,int) ; 
 int FUNC1 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,int,int) ; 
 int FUNC3 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*,int,int) ; 

__attribute__((used)) static void FUNC5(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;
	u16 offset = 0x0000;

	if (phy->rev == 1)
		offset = 0x4C00;

	FUNC0(dev, offset, 0x00FE);
	FUNC0(dev, offset + 1, 0x000D);
	FUNC0(dev, offset + 2, 0x0013);
	FUNC0(dev, offset + 3, 0x0019);

	if (phy->rev == 1) {
		FUNC0(dev, 0x1800, 0x2710);
		FUNC0(dev, 0x1801, 0x9B83);
		FUNC0(dev, 0x1802, 0x9B83);
		FUNC0(dev, 0x1803, 0x0F8D);
		FUNC2(dev, 0x0455, 0x0004);
	}

	FUNC2(dev, 0x04A5, (FUNC1(dev, 0x04A5)
					  & 0x00FF) | 0x5700);
	FUNC2(dev, 0x041A, (FUNC1(dev, 0x041A)
					  & 0xFF80) | 0x000F);
	FUNC2(dev, 0x041A, (FUNC1(dev, 0x041A)
					  & 0xC07F) | 0x2B80);
	FUNC2(dev, 0x048C, (FUNC1(dev, 0x048C)
					  & 0xF0FF) | 0x0300);

	FUNC4(dev, 0x007A,
				FUNC3(dev, 0x007A)
				| 0x0008);

	FUNC2(dev, 0x04A0, (FUNC1(dev, 0x04A0)
			    & 0xFFF0) | 0x0008);
	FUNC2(dev, 0x04A1, (FUNC1(dev, 0x04A1)
			    & 0xF0FF) | 0x0600);
	FUNC2(dev, 0x04A2, (FUNC1(dev, 0x04A2)
			    & 0xF0FF) | 0x0700);
	FUNC2(dev, 0x04A0, (FUNC1(dev, 0x04A0)
			    & 0xF0FF) | 0x0100);

	if (phy->rev == 1)
		FUNC2(dev, 0x04A2,
				    (FUNC1(dev, 0x04A2)
				    & 0xFFF0) | 0x0007);

	FUNC2(dev, 0x0488, (FUNC1(dev, 0x0488)
			    & 0xFF00) | 0x001C);
	FUNC2(dev, 0x0488, (FUNC1(dev, 0x0488)
			    & 0xC0FF) | 0x0200);
	FUNC2(dev, 0x0496, (FUNC1(dev, 0x0496)
			    & 0xFF00) | 0x001C);
	FUNC2(dev, 0x0489, (FUNC1(dev, 0x0489)
			    & 0xFF00) | 0x0020);
	FUNC2(dev, 0x0489, (FUNC1(dev, 0x0489)
			    & 0xC0FF) | 0x0200);
	FUNC2(dev, 0x0482, (FUNC1(dev, 0x0482)
			    & 0xFF00) | 0x002E);
	FUNC2(dev, 0x0496, (FUNC1(dev, 0x0496)
			    & 0x00FF) | 0x1A00);
	FUNC2(dev, 0x0481, (FUNC1(dev, 0x0481)
			    & 0xFF00) | 0x0028);
	FUNC2(dev, 0x0481, (FUNC1(dev, 0x0481)
			    & 0x00FF) | 0x2C00);

	if (phy->rev == 1) {
		FUNC2(dev, 0x0430, 0x092B);
		FUNC2(dev, 0x041B,
				    (FUNC1(dev, 0x041B)
				    & 0xFFE1) | 0x0002);
	} else {
		FUNC2(dev, 0x041B,
				    FUNC1(dev, 0x041B) & 0xFFE1);
		FUNC2(dev, 0x041F, 0x287A);
		FUNC2(dev, 0x0420,
				    (FUNC1(dev, 0x0420)
				    & 0xFFF0) | 0x0004);
	}

	if (phy->rev > 2) {
		FUNC2(dev, 0x0422, 0x287A);
		FUNC2(dev, 0x0420,
				    (FUNC1(dev, 0x0420)
				    & 0x0FFF) | 0x3000);
	}

	FUNC2(dev, 0x04A8, (FUNC1(dev, 0x04A8)
			    & 0x8080) | 0x7874);
	FUNC2(dev, 0x048E, 0x1C00);

	if (phy->rev == 1) {
		FUNC2(dev, 0x04AB,
				    (FUNC1(dev, 0x04AB)
				    & 0xF0FF) | 0x0600);
		FUNC2(dev, 0x048B, 0x005E);
		FUNC2(dev, 0x048C,
				    (FUNC1(dev, 0x048C) & 0xFF00)
				    | 0x001E);
		FUNC2(dev, 0x048D, 0x0002);
	}

	FUNC0(dev, offset + 0x0800, 0);
	FUNC0(dev, offset + 0x0801, 7);
	FUNC0(dev, offset + 0x0802, 16);
	FUNC0(dev, offset + 0x0803, 28);

	if (phy->rev >= 6) {
		FUNC2(dev, 0x0426,
				    (FUNC1(dev, 0x0426) & 0xFFFC));
		FUNC2(dev, 0x0426,
				    (FUNC1(dev, 0x0426) & 0xEFFF));
	}
}