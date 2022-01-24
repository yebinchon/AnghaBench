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
struct b43legacy_phy {int type; int rev; int analog; int nrssislope; int* nrssi; int radio_rev; int /*<<< orphan*/  channel; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int B43legacy_MMIO_CHANNEL_EXT ; 
#define  B43legacy_PHYTYPE_B 129 
#define  B43legacy_PHYTYPE_G 128 
 int B43legacy_PHY_G_CRS ; 
 int B43legacy_PHY_G_LO_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*) ; 
 int FUNC4 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_wldev*,int,int) ; 
 int FUNC6 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43legacy_wldev*,int,int) ; 
 int FUNC8 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct b43legacy_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC11 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct b43legacy_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

void FUNC14(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;
	u16 backup[18] = { 0 };
	u16 tmp;
	s16 nrssi0;
	s16 nrssi1;

	switch (phy->type) {
	case B43legacy_PHYTYPE_B:
		backup[0] = FUNC6(dev, 0x007A);
		backup[1] = FUNC6(dev, 0x0052);
		backup[2] = FUNC6(dev, 0x0043);
		backup[3] = FUNC4(dev, 0x0030);
		backup[4] = FUNC4(dev, 0x0026);
		backup[5] = FUNC4(dev, 0x0015);
		backup[6] = FUNC4(dev, 0x002A);
		backup[7] = FUNC4(dev, 0x0020);
		backup[8] = FUNC4(dev, 0x005A);
		backup[9] = FUNC4(dev, 0x0059);
		backup[10] = FUNC4(dev, 0x0058);
		backup[11] = FUNC8(dev, 0x03E2);
		backup[12] = FUNC8(dev, 0x03E6);
		backup[13] = FUNC8(dev, B43legacy_MMIO_CHANNEL_EXT);

		tmp  = FUNC6(dev, 0x007A);
		tmp &= (phy->rev >= 5) ? 0x007F : 0x000F;
		FUNC7(dev, 0x007A, tmp);
		FUNC5(dev, 0x0030, 0x00FF);
		FUNC12(dev, 0x03EC, 0x7F7F);
		FUNC5(dev, 0x0026, 0x0000);
		FUNC5(dev, 0x0015,
				    FUNC4(dev, 0x0015) | 0x0020);
		FUNC5(dev, 0x002A, 0x08A3);
		FUNC7(dev, 0x007A,
					FUNC6(dev, 0x007A)
					| 0x0080);

		nrssi0 = (s16)FUNC4(dev, 0x0027);
		FUNC7(dev, 0x007A,
					FUNC6(dev, 0x007A)
					& 0x007F);
		if (phy->analog >= 2)
			FUNC12(dev, 0x03E6, 0x0040);
		else if (phy->analog == 0)
			FUNC12(dev, 0x03E6, 0x0122);
		else
			FUNC12(dev, B43legacy_MMIO_CHANNEL_EXT,
					  FUNC8(dev,
					  B43legacy_MMIO_CHANNEL_EXT) & 0x2000);
		FUNC5(dev, 0x0020, 0x3F3F);
		FUNC5(dev, 0x0015, 0xF330);
		FUNC7(dev, 0x005A, 0x0060);
		FUNC7(dev, 0x0043,
					FUNC6(dev, 0x0043)
					& 0x00F0);
		FUNC5(dev, 0x005A, 0x0480);
		FUNC5(dev, 0x0059, 0x0810);
		FUNC5(dev, 0x0058, 0x000D);
		FUNC13(20);

		nrssi1 = (s16)FUNC4(dev, 0x0027);
		FUNC5(dev, 0x0030, backup[3]);
		FUNC7(dev, 0x007A, backup[0]);
		FUNC12(dev, 0x03E2, backup[11]);
		FUNC5(dev, 0x0026, backup[4]);
		FUNC5(dev, 0x0015, backup[5]);
		FUNC5(dev, 0x002A, backup[6]);
		FUNC11(dev, phy->channel);
		if (phy->analog != 0)
			FUNC12(dev, 0x03F4, backup[13]);

		FUNC5(dev, 0x0020, backup[7]);
		FUNC5(dev, 0x005A, backup[8]);
		FUNC5(dev, 0x0059, backup[9]);
		FUNC5(dev, 0x0058, backup[10]);
		FUNC7(dev, 0x0052, backup[1]);
		FUNC7(dev, 0x0043, backup[2]);

		if (nrssi0 == nrssi1)
			phy->nrssislope = 0x00010000;
		else
			phy->nrssislope = 0x00400000 / (nrssi0 - nrssi1);

		if (nrssi0 <= -4) {
			phy->nrssi[0] = nrssi0;
			phy->nrssi[1] = nrssi1;
		}
		break;
	case B43legacy_PHYTYPE_G:
		if (phy->radio_rev >= 9)
			return;
		if (phy->radio_rev == 8)
			FUNC1(dev);

		FUNC5(dev, B43legacy_PHY_G_CRS,
				    FUNC4(dev, B43legacy_PHY_G_CRS)
				    & 0x7FFF);
		FUNC5(dev, 0x0802,
				    FUNC4(dev, 0x0802) & 0xFFFC);
		backup[7] = FUNC8(dev, 0x03E2);
		FUNC12(dev, 0x03E2,
				  FUNC8(dev, 0x03E2) | 0x8000);
		backup[0] = FUNC6(dev, 0x007A);
		backup[1] = FUNC6(dev, 0x0052);
		backup[2] = FUNC6(dev, 0x0043);
		backup[3] = FUNC4(dev, 0x0015);
		backup[4] = FUNC4(dev, 0x005A);
		backup[5] = FUNC4(dev, 0x0059);
		backup[6] = FUNC4(dev, 0x0058);
		backup[8] = FUNC8(dev, 0x03E6);
		backup[9] = FUNC8(dev, B43legacy_MMIO_CHANNEL_EXT);
		if (phy->rev >= 3) {
			backup[10] = FUNC4(dev, 0x002E);
			backup[11] = FUNC4(dev, 0x002F);
			backup[12] = FUNC4(dev, 0x080F);
			backup[13] = FUNC4(dev,
						B43legacy_PHY_G_LO_CONTROL);
			backup[14] = FUNC4(dev, 0x0801);
			backup[15] = FUNC4(dev, 0x0060);
			backup[16] = FUNC4(dev, 0x0014);
			backup[17] = FUNC4(dev, 0x0478);
			FUNC5(dev, 0x002E, 0);
			FUNC5(dev, B43legacy_PHY_G_LO_CONTROL, 0);
			switch (phy->rev) {
			case 4: case 6: case 7:
				FUNC5(dev, 0x0478,
						    FUNC4(dev,
						    0x0478) | 0x0100);
				FUNC5(dev, 0x0801,
						    FUNC4(dev,
						    0x0801) | 0x0040);
				break;
			case 3: case 5:
				FUNC5(dev, 0x0801,
						    FUNC4(dev,
						    0x0801) & 0xFFBF);
				break;
			}
			FUNC5(dev, 0x0060,
					    FUNC4(dev, 0x0060)
					    | 0x0040);
			FUNC5(dev, 0x0014,
					    FUNC4(dev, 0x0014)
					    | 0x0200);
		}
		FUNC7(dev, 0x007A,
					FUNC6(dev, 0x007A)
					| 0x0070);
		FUNC9(dev, 0, 8, 0);
		FUNC7(dev, 0x007A,
					FUNC6(dev, 0x007A)
					& 0x00F7);
		if (phy->rev >= 2) {
			FUNC5(dev, 0x0811,
					    (FUNC4(dev, 0x0811)
					    & 0xFFCF) | 0x0030);
			FUNC5(dev, 0x0812,
					    (FUNC4(dev, 0x0812)
					    & 0xFFCF) | 0x0010);
		}
		FUNC7(dev, 0x007A,
					FUNC6(dev, 0x007A)
					| 0x0080);
		FUNC13(20);

		nrssi0 = (s16)((FUNC4(dev, 0x047F) >> 8) & 0x003F);
		if (nrssi0 >= 0x0020)
			nrssi0 -= 0x0040;

		FUNC7(dev, 0x007A,
					FUNC6(dev, 0x007A)
					& 0x007F);
		if (phy->analog >= 2)
			FUNC5(dev, 0x0003,
					    (FUNC4(dev, 0x0003)
					    & 0xFF9F) | 0x0040);

		FUNC12(dev, B43legacy_MMIO_CHANNEL_EXT,
				  FUNC8(dev,
				  B43legacy_MMIO_CHANNEL_EXT) | 0x2000);
		FUNC7(dev, 0x007A,
					FUNC6(dev, 0x007A)
					| 0x000F);
		FUNC5(dev, 0x0015, 0xF330);
		if (phy->rev >= 2) {
			FUNC5(dev, 0x0812,
					    (FUNC4(dev, 0x0812)
					    & 0xFFCF) | 0x0020);
			FUNC5(dev, 0x0811,
					    (FUNC4(dev, 0x0811)
					    & 0xFFCF) | 0x0020);
		}

		FUNC9(dev, 3, 0, 1);
		if (phy->radio_rev == 8)
			FUNC7(dev, 0x0043, 0x001F);
		else {
			tmp = FUNC6(dev, 0x0052) & 0xFF0F;
			FUNC7(dev, 0x0052, tmp | 0x0060);
			tmp = FUNC6(dev, 0x0043) & 0xFFF0;
			FUNC7(dev, 0x0043, tmp | 0x0009);
		}
		FUNC5(dev, 0x005A, 0x0480);
		FUNC5(dev, 0x0059, 0x0810);
		FUNC5(dev, 0x0058, 0x000D);
		FUNC13(20);
		nrssi1 = (s16)((FUNC4(dev, 0x047F) >> 8) & 0x003F);
		if (nrssi1 >= 0x0020)
			nrssi1 -= 0x0040;
		if (nrssi0 == nrssi1)
			phy->nrssislope = 0x00010000;
		else
			phy->nrssislope = 0x00400000 / (nrssi0 - nrssi1);
		if (nrssi0 >= -4) {
			phy->nrssi[0] = nrssi1;
			phy->nrssi[1] = nrssi0;
		}
		if (phy->rev >= 3) {
			FUNC5(dev, 0x002E, backup[10]);
			FUNC5(dev, 0x002F, backup[11]);
			FUNC5(dev, 0x080F, backup[12]);
			FUNC5(dev, B43legacy_PHY_G_LO_CONTROL,
					    backup[13]);
		}
		if (phy->rev >= 2) {
			FUNC5(dev, 0x0812,
					    FUNC4(dev, 0x0812)
					    & 0xFFCF);
			FUNC5(dev, 0x0811,
					    FUNC4(dev, 0x0811)
					    & 0xFFCF);
		}

		FUNC7(dev, 0x007A, backup[0]);
		FUNC7(dev, 0x0052, backup[1]);
		FUNC7(dev, 0x0043, backup[2]);
		FUNC12(dev, 0x03E2, backup[7]);
		FUNC12(dev, 0x03E6, backup[8]);
		FUNC12(dev, B43legacy_MMIO_CHANNEL_EXT, backup[9]);
		FUNC5(dev, 0x0015, backup[3]);
		FUNC5(dev, 0x005A, backup[4]);
		FUNC5(dev, 0x0059, backup[5]);
		FUNC5(dev, 0x0058, backup[6]);
		FUNC11(dev, phy->channel);
		FUNC5(dev, 0x0802,
				    FUNC4(dev, 0x0802) | 0x0003);
		FUNC10(dev);
		FUNC5(dev, B43legacy_PHY_G_CRS,
				    FUNC4(dev, B43legacy_PHY_G_CRS)
				    | 0x8000);
		if (phy->rev >= 3) {
			FUNC5(dev, 0x0801, backup[14]);
			FUNC5(dev, 0x0060, backup[15]);
			FUNC5(dev, 0x0014, backup[16]);
			FUNC5(dev, 0x0478, backup[17]);
		}
		FUNC3(dev);
		FUNC2(dev);
		break;
	default:
		FUNC0(1);
	}
}