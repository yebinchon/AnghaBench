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
typedef  int u16 ;
struct b43legacy_phy {int rev; int bbatt; scalar_t__ analog; int radio_ver; int radio_rev; int* loopback_gain; } ;
struct b43legacy_wldev {TYPE_3__* dev; struct b43legacy_phy phy; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_4__ {int boardflags_lo; } ;
struct TYPE_5__ {TYPE_1__ sprom; } ;

/* Variables and functions */
 int B43legacy_BFL_EXTLNA ; 
 int FUNC0 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,int,int) ; 
 int FUNC3 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;
	u16 backup_phy[15] = {0};
	u16 backup_radio[3];
	u16 backup_bband;
	u16 i;
	u16 loop1_cnt;
	u16 loop1_done;
	u16 loop1_omitted;
	u16 loop2_done;

	backup_phy[0] = FUNC0(dev, 0x0429);
	backup_phy[1] = FUNC0(dev, 0x0001);
	backup_phy[2] = FUNC0(dev, 0x0811);
	backup_phy[3] = FUNC0(dev, 0x0812);
	if (phy->rev != 1) {
		backup_phy[4] = FUNC0(dev, 0x0814);
		backup_phy[5] = FUNC0(dev, 0x0815);
	}
	backup_phy[6] = FUNC0(dev, 0x005A);
	backup_phy[7] = FUNC0(dev, 0x0059);
	backup_phy[8] = FUNC0(dev, 0x0058);
	backup_phy[9] = FUNC0(dev, 0x000A);
	backup_phy[10] = FUNC0(dev, 0x0003);
	backup_phy[11] = FUNC0(dev, 0x080F);
	backup_phy[12] = FUNC0(dev, 0x0810);
	backup_phy[13] = FUNC0(dev, 0x002B);
	backup_phy[14] = FUNC0(dev, 0x0015);
	FUNC0(dev, 0x002D); /* dummy read */
	backup_bband = phy->bbatt;
	backup_radio[0] = FUNC3(dev, 0x0052);
	backup_radio[1] = FUNC3(dev, 0x0043);
	backup_radio[2] = FUNC3(dev, 0x007A);

	FUNC2(dev, 0x0429,
			    FUNC0(dev, 0x0429) & 0x3FFF);
	FUNC2(dev, 0x0001,
			    FUNC0(dev, 0x0001) & 0x8000);
	FUNC2(dev, 0x0811,
			    FUNC0(dev, 0x0811) | 0x0002);
	FUNC2(dev, 0x0812,
			    FUNC0(dev, 0x0812) & 0xFFFD);
	FUNC2(dev, 0x0811,
			    FUNC0(dev, 0x0811) | 0x0001);
	FUNC2(dev, 0x0812,
			    FUNC0(dev, 0x0812) & 0xFFFE);
	if (phy->rev != 1) {
		FUNC2(dev, 0x0814,
				    FUNC0(dev, 0x0814) | 0x0001);
		FUNC2(dev, 0x0815,
				    FUNC0(dev, 0x0815) & 0xFFFE);
		FUNC2(dev, 0x0814,
				    FUNC0(dev, 0x0814) | 0x0002);
		FUNC2(dev, 0x0815,
				    FUNC0(dev, 0x0815) & 0xFFFD);
	}
	FUNC2(dev, 0x0811, FUNC0(dev, 0x0811) |
			    0x000C);
	FUNC2(dev, 0x0812, FUNC0(dev, 0x0812) |
			    0x000C);

	FUNC2(dev, 0x0811, (FUNC0(dev, 0x0811)
			    & 0xFFCF) | 0x0030);
	FUNC2(dev, 0x0812, (FUNC0(dev, 0x0812)
			    & 0xFFCF) | 0x0010);

	FUNC2(dev, 0x005A, 0x0780);
	FUNC2(dev, 0x0059, 0xC810);
	FUNC2(dev, 0x0058, 0x000D);
	if (phy->analog == 0)
		FUNC2(dev, 0x0003, 0x0122);
	else
		FUNC2(dev, 0x000A,
				    FUNC0(dev, 0x000A)
				    | 0x2000);
	if (phy->rev != 1) {
		FUNC2(dev, 0x0814,
				    FUNC0(dev, 0x0814) | 0x0004);
		FUNC2(dev, 0x0815,
				    FUNC0(dev, 0x0815) & 0xFFFB);
	}
	FUNC2(dev, 0x0003,
			    (FUNC0(dev, 0x0003)
			     & 0xFF9F) | 0x0040);
	if (phy->radio_ver == 0x2050 && phy->radio_rev == 2) {
		FUNC4(dev, 0x0052, 0x0000);
		FUNC4(dev, 0x0043,
					(FUNC3(dev, 0x0043)
					 & 0xFFF0) | 0x0009);
		loop1_cnt = 9;
	} else if (phy->radio_rev == 8) {
		FUNC4(dev, 0x0043, 0x000F);
		loop1_cnt = 15;
	} else
		loop1_cnt = 0;

	FUNC1(dev, 11);

	if (phy->rev >= 3)
		FUNC2(dev, 0x080F, 0xC020);
	else
		FUNC2(dev, 0x080F, 0x8020);
	FUNC2(dev, 0x0810, 0x0000);

	FUNC2(dev, 0x002B,
			    (FUNC0(dev, 0x002B)
			     & 0xFFC0) | 0x0001);
	FUNC2(dev, 0x002B,
			    (FUNC0(dev, 0x002B)
			     & 0xC0FF) | 0x0800);
	FUNC2(dev, 0x0811,
			    FUNC0(dev, 0x0811) | 0x0100);
	FUNC2(dev, 0x0812,
			    FUNC0(dev, 0x0812) & 0xCFFF);
	if (dev->dev->bus->sprom.boardflags_lo & B43legacy_BFL_EXTLNA) {
		if (phy->rev >= 7) {
			FUNC2(dev, 0x0811,
					    FUNC0(dev, 0x0811)
					    | 0x0800);
			FUNC2(dev, 0x0812,
					    FUNC0(dev, 0x0812)
					    | 0x8000);
		}
	}
	FUNC4(dev, 0x007A,
				FUNC3(dev, 0x007A)
				& 0x00F7);

	for (i = 0; i < loop1_cnt; i++) {
		FUNC4(dev, 0x0043, loop1_cnt);
		FUNC2(dev, 0x0812,
				    (FUNC0(dev, 0x0812)
				     & 0xF0FF) | (i << 8));
		FUNC2(dev, 0x0015,
				    (FUNC0(dev, 0x0015)
				     & 0x0FFF) | 0xA000);
		FUNC2(dev, 0x0015,
				    (FUNC0(dev, 0x0015)
				     & 0x0FFF) | 0xF000);
		FUNC5(20);
		if (FUNC0(dev, 0x002D) >= 0x0DFC)
			break;
	}
	loop1_done = i;
	loop1_omitted = loop1_cnt - loop1_done;

	loop2_done = 0;
	if (loop1_done >= 8) {
		FUNC2(dev, 0x0812,
				    FUNC0(dev, 0x0812)
				    | 0x0030);
		for (i = loop1_done - 8; i < 16; i++) {
			FUNC2(dev, 0x0812,
					    (FUNC0(dev, 0x0812)
					     & 0xF0FF) | (i << 8));
			FUNC2(dev, 0x0015,
					    (FUNC0(dev, 0x0015)
					     & 0x0FFF) | 0xA000);
			FUNC2(dev, 0x0015,
					    (FUNC0(dev, 0x0015)
					     & 0x0FFF) | 0xF000);
			FUNC5(20);
			if (FUNC0(dev, 0x002D) >= 0x0DFC)
				break;
		}
	}

	if (phy->rev != 1) {
		FUNC2(dev, 0x0814, backup_phy[4]);
		FUNC2(dev, 0x0815, backup_phy[5]);
	}
	FUNC2(dev, 0x005A, backup_phy[6]);
	FUNC2(dev, 0x0059, backup_phy[7]);
	FUNC2(dev, 0x0058, backup_phy[8]);
	FUNC2(dev, 0x000A, backup_phy[9]);
	FUNC2(dev, 0x0003, backup_phy[10]);
	FUNC2(dev, 0x080F, backup_phy[11]);
	FUNC2(dev, 0x0810, backup_phy[12]);
	FUNC2(dev, 0x002B, backup_phy[13]);
	FUNC2(dev, 0x0015, backup_phy[14]);

	FUNC1(dev, backup_bband);

	FUNC4(dev, 0x0052, backup_radio[0]);
	FUNC4(dev, 0x0043, backup_radio[1]);
	FUNC4(dev, 0x007A, backup_radio[2]);

	FUNC2(dev, 0x0811, backup_phy[2] | 0x0003);
	FUNC5(10);
	FUNC2(dev, 0x0811, backup_phy[2]);
	FUNC2(dev, 0x0812, backup_phy[3]);
	FUNC2(dev, 0x0429, backup_phy[0]);
	FUNC2(dev, 0x0001, backup_phy[1]);

	phy->loopback_gain[0] = ((loop1_done * 6) - (loop1_omitted * 4)) - 11;
	phy->loopback_gain[1] = (24 - (3 * loop2_done)) * 2;
}