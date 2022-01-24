#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct b43legacy_phy {scalar_t__ type; int rev; } ;
struct b43legacy_wldev {TYPE_4__* dev; struct b43legacy_phy phy; } ;
typedef  int /*<<< orphan*/  s16 ;
struct TYPE_8__ {TYPE_3__* bus; } ;
struct TYPE_6__ {int board_rev; } ;
struct TYPE_5__ {int type; } ;
struct TYPE_7__ {TYPE_2__ sprom; TYPE_1__ boardinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int B43legacy_ILT_FINEFREQG_SIZE ; 
 int B43legacy_ILT_NOISEG1_SIZE ; 
 int B43legacy_ILT_NOISEG2_SIZE ; 
 int B43legacy_ILT_NOISESCALEG_SIZE ; 
 int B43legacy_ILT_RETARD_SIZE ; 
 int B43legacy_ILT_ROTOR_SIZE ; 
 int B43legacy_ILT_SIGMASQR_SIZE ; 
 scalar_t__ B43legacy_PHYTYPE_G ; 
 int B43legacy_PHY_G_CRS ; 
 int* b43legacy_ilt_finefreqg ; 
 int* b43legacy_ilt_noiseg1 ; 
 int* b43legacy_ilt_noiseg2 ; 
 int* b43legacy_ilt_noisescaleg1 ; 
 int* b43legacy_ilt_noisescaleg2 ; 
 int* b43legacy_ilt_noisescaleg3 ; 
 int /*<<< orphan*/ * b43legacy_ilt_retard ; 
 int /*<<< orphan*/ * b43legacy_ilt_rotor ; 
 int* b43legacy_ilt_sigmasqr1 ; 
 int* b43legacy_ilt_sigmasqr2 ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*) ; 
 int FUNC5 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43legacy_wldev*,int,int) ; 
 scalar_t__ FUNC7 (struct b43legacy_wldev*) ; 

__attribute__((used)) static void FUNC8(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;
	u16 i;

	FUNC0(phy->type != B43legacy_PHYTYPE_G);
	if (phy->rev == 1) {
		FUNC6(dev, 0x0406, 0x4F19);
		FUNC6(dev, B43legacy_PHY_G_CRS,
				    (FUNC5(dev,
				    B43legacy_PHY_G_CRS) & 0xFC3F) | 0x0340);
		FUNC6(dev, 0x042C, 0x005A);
		FUNC6(dev, 0x0427, 0x001A);

		for (i = 0; i < B43legacy_ILT_FINEFREQG_SIZE; i++)
			FUNC1(dev, 0x5800 + i,
					    b43legacy_ilt_finefreqg[i]);
		for (i = 0; i < B43legacy_ILT_NOISEG1_SIZE; i++)
			FUNC1(dev, 0x1800 + i,
					    b43legacy_ilt_noiseg1[i]);
		for (i = 0; i < B43legacy_ILT_ROTOR_SIZE; i++)
			FUNC2(dev, 0x2000 + i,
					      b43legacy_ilt_rotor[i]);
	} else {
		/* nrssi values are signed 6-bit values. Why 0x7654 here? */
		FUNC3(dev, 0xBA98, (s16)0x7654);

		if (phy->rev == 2) {
			FUNC6(dev, 0x04C0, 0x1861);
			FUNC6(dev, 0x04C1, 0x0271);
		} else if (phy->rev > 2) {
			FUNC6(dev, 0x04C0, 0x0098);
			FUNC6(dev, 0x04C1, 0x0070);
			FUNC6(dev, 0x04C9, 0x0080);
		}
		FUNC6(dev, 0x042B, FUNC5(dev,
				    0x042B) | 0x800);

		for (i = 0; i < 64; i++)
			FUNC1(dev, 0x4000 + i, i);
		for (i = 0; i < B43legacy_ILT_NOISEG2_SIZE; i++)
			FUNC1(dev, 0x1800 + i,
					    b43legacy_ilt_noiseg2[i]);
	}

	if (phy->rev <= 2)
		for (i = 0; i < B43legacy_ILT_NOISESCALEG_SIZE; i++)
			FUNC1(dev, 0x1400 + i,
					    b43legacy_ilt_noisescaleg1[i]);
	else if ((phy->rev >= 7) && (FUNC5(dev, 0x0449) & 0x0200))
		for (i = 0; i < B43legacy_ILT_NOISESCALEG_SIZE; i++)
			FUNC1(dev, 0x1400 + i,
					    b43legacy_ilt_noisescaleg3[i]);
	else
		for (i = 0; i < B43legacy_ILT_NOISESCALEG_SIZE; i++)
			FUNC1(dev, 0x1400 + i,
					    b43legacy_ilt_noisescaleg2[i]);

	if (phy->rev == 2)
		for (i = 0; i < B43legacy_ILT_SIGMASQR_SIZE; i++)
			FUNC1(dev, 0x5000 + i,
					    b43legacy_ilt_sigmasqr1[i]);
	else if ((phy->rev > 2) && (phy->rev <= 8))
		for (i = 0; i < B43legacy_ILT_SIGMASQR_SIZE; i++)
			FUNC1(dev, 0x5000 + i,
					    b43legacy_ilt_sigmasqr2[i]);

	if (phy->rev == 1) {
		for (i = 0; i < B43legacy_ILT_RETARD_SIZE; i++)
			FUNC2(dev, 0x2400 + i,
					      b43legacy_ilt_retard[i]);
		for (i = 4; i < 20; i++)
			FUNC1(dev, 0x5400 + i, 0x0020);
		FUNC4(dev);

		if (FUNC7(dev) &&
		    (dev->dev->bus->boardinfo.type == 0x0416) &&
		    (dev->dev->bus->sprom.board_rev == 0x0017))
			return;

		FUNC1(dev, 0x5001, 0x0002);
		FUNC1(dev, 0x5002, 0x0001);
	} else {
		for (i = 0; i <= 0x20; i++)
			FUNC1(dev, 0x1000 + i, 0x0820);
		FUNC4(dev);
		FUNC5(dev, 0x0400); /* dummy read */
		FUNC6(dev, 0x0403, 0x1000);
		FUNC1(dev, 0x3C02, 0x000F);
		FUNC1(dev, 0x3C03, 0x0014);

		if (FUNC7(dev) &&
		    (dev->dev->bus->boardinfo.type == 0x0416) &&
		    (dev->dev->bus->sprom.board_rev == 0x0017))
			return;

		FUNC1(dev, 0x0401, 0x0002);
		FUNC1(dev, 0x0402, 0x0001);
	}
}