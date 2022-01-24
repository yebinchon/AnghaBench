#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct ssb_sprom {int boardflags_hi; int boardflags_lo; } ;
struct nphy_gain_ctl_workaround_entry {int* lna1_gain; int* lna2_gain; int* gain_db; int* gain_bits; int init_gain; int* rfseq_init; int cliphi_gain; int clipmd_gain; int cliplo_gain; int nbclip; int /*<<< orphan*/  wlclip; int /*<<< orphan*/  crsminu; int /*<<< orphan*/  crsminl; int /*<<< orphan*/  crsmin; } ;
struct TYPE_4__ {int rev; } ;
struct b43_wldev {TYPE_2__ phy; TYPE_1__* dev; } ;
struct TYPE_3__ {struct ssb_sprom* bus_sprom; } ;

/* Variables and functions */
 int B2056_RX0 ; 
 int B2056_RX1 ; 
 int B2056_RX_BIASPOLE_LNAA1_IDAC ; 
 int B2056_RX_BIASPOLE_LNAG1_IDAC ; 
 int B2056_RX_LNAA2_IDAC ; 
 int B2056_RX_LNAG2_IDAC ; 
 int B2056_RX_RSSI_GAIN ; 
 int B2056_RX_RSSI_POLE ; 
 int B43_BFH_EXTLNA_5GHZ ; 
 int B43_BFL_EXTLNA ; 
 int /*<<< orphan*/  B43_NPHY_BANDCTL ; 
 int B43_NPHY_BANDCTL_5GHZ ; 
 int /*<<< orphan*/  B43_NPHY_C1_CGAINI ; 
 int B43_NPHY_C1_CGAINI_CL2DETECT ; 
 int /*<<< orphan*/  B43_NPHY_C1_CLIPWBTHRES ; 
 int B43_NPHY_C1_CLIPWBTHRES_CLIP2 ; 
 int /*<<< orphan*/  B43_NPHY_C1_NBCLIPTHRES ; 
 int /*<<< orphan*/  B43_NPHY_C2_CGAINI ; 
 int B43_NPHY_C2_CGAINI_CL2DETECT ; 
 int /*<<< orphan*/  B43_NPHY_C2_CLIPWBTHRES ; 
 int B43_NPHY_C2_CLIPWBTHRES_CLIP2 ; 
 int /*<<< orphan*/  B43_NPHY_C2_NBCLIPTHRES ; 
 int /*<<< orphan*/  B43_NPHY_CCK_SHIFTB_REF ; 
 int /*<<< orphan*/  B43_NPHY_CRSMINPOWER0 ; 
 int /*<<< orphan*/  B43_NPHY_CRSMINPOWERL0 ; 
 int /*<<< orphan*/  B43_NPHY_CRSMINPOWERU0 ; 
 int /*<<< orphan*/  B43_NPHY_REV3_C1_CLIP_HIGAIN_A ; 
 int /*<<< orphan*/  B43_NPHY_REV3_C1_CLIP_LOGAIN_A ; 
 int /*<<< orphan*/  B43_NPHY_REV3_C1_CLIP_MEDGAIN_A ; 
 int /*<<< orphan*/  B43_NPHY_REV3_C1_INITGAIN_A ; 
 int /*<<< orphan*/  B43_NPHY_REV3_C2_CLIP_HIGAIN_A ; 
 int /*<<< orphan*/  B43_NPHY_REV3_C2_CLIP_LOGAIN_A ; 
 int /*<<< orphan*/  B43_NPHY_REV3_C2_CLIP_MEDGAIN_A ; 
 int /*<<< orphan*/  B43_NPHY_REV3_C2_INITGAIN_A ; 
 int /*<<< orphan*/  B43_NPHY_RXCTL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 struct nphy_gain_ctl_workaround_entry* FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int,int) ; 

__attribute__((used)) static void FUNC9(struct b43_wldev *dev)
{
	struct ssb_sprom *sprom = dev->dev->bus_sprom;

	bool ghz5;
	bool ext_lna;
	u16 rssi_gain;
	struct nphy_gain_ctl_workaround_entry *e;
	u8 lpf_gain[6] = { 0x00, 0x06, 0x0C, 0x12, 0x12, 0x12 };
	u8 lpf_bits[6] = { 0, 1, 2, 3, 3, 3 };

	/* Prepare values */
	ghz5 = FUNC5(dev, B43_NPHY_BANDCTL)
		& B43_NPHY_BANDCTL_5GHZ;
	ext_lna = ghz5 ? sprom->boardflags_hi & B43_BFH_EXTLNA_5GHZ :
		sprom->boardflags_lo & B43_BFL_EXTLNA;
	e = FUNC2(dev, ghz5, ext_lna);
	if (ghz5 && dev->phy.rev >= 5)
		rssi_gain = 0x90;
	else
		rssi_gain = 0x50;

	FUNC6(dev, B43_NPHY_RXCTL, 0x0040);

	/* Set Clip 2 detect */
	FUNC6(dev, B43_NPHY_C1_CGAINI, B43_NPHY_C1_CGAINI_CL2DETECT);
	FUNC6(dev, B43_NPHY_C2_CGAINI, B43_NPHY_C2_CGAINI_CL2DETECT);

	FUNC8(dev, B2056_RX0 | B2056_RX_BIASPOLE_LNAG1_IDAC,
			0x17);
	FUNC8(dev, B2056_RX1 | B2056_RX_BIASPOLE_LNAG1_IDAC,
			0x17);
	FUNC8(dev, B2056_RX0 | B2056_RX_LNAG2_IDAC, 0xF0);
	FUNC8(dev, B2056_RX1 | B2056_RX_LNAG2_IDAC, 0xF0);
	FUNC8(dev, B2056_RX0 | B2056_RX_RSSI_POLE, 0x00);
	FUNC8(dev, B2056_RX1 | B2056_RX_RSSI_POLE, 0x00);
	FUNC8(dev, B2056_RX0 | B2056_RX_RSSI_GAIN,
			rssi_gain);
	FUNC8(dev, B2056_RX1 | B2056_RX_RSSI_GAIN,
			rssi_gain);
	FUNC8(dev, B2056_RX0 | B2056_RX_BIASPOLE_LNAA1_IDAC,
			0x17);
	FUNC8(dev, B2056_RX1 | B2056_RX_BIASPOLE_LNAA1_IDAC,
			0x17);
	FUNC8(dev, B2056_RX0 | B2056_RX_LNAA2_IDAC, 0xFF);
	FUNC8(dev, B2056_RX1 | B2056_RX_LNAA2_IDAC, 0xFF);

	FUNC3(dev, FUNC1(0, 8), 4, e->lna1_gain);
	FUNC3(dev, FUNC1(1, 8), 4, e->lna1_gain);
	FUNC3(dev, FUNC1(0, 16), 4, e->lna2_gain);
	FUNC3(dev, FUNC1(1, 16), 4, e->lna2_gain);
	FUNC3(dev, FUNC1(0, 32), 10, e->gain_db);
	FUNC3(dev, FUNC1(1, 32), 10, e->gain_db);
	FUNC3(dev, FUNC1(2, 32), 10, e->gain_bits);
	FUNC3(dev, FUNC1(3, 32), 10, e->gain_bits);
	FUNC3(dev, FUNC1(0, 0x40), 6, lpf_gain);
	FUNC3(dev, FUNC1(1, 0x40), 6, lpf_gain);
	FUNC3(dev, FUNC1(2, 0x40), 6, lpf_bits);
	FUNC3(dev, FUNC1(3, 0x40), 6, lpf_bits);

	FUNC7(dev, B43_NPHY_REV3_C1_INITGAIN_A, e->init_gain);
	FUNC7(dev, B43_NPHY_REV3_C2_INITGAIN_A, e->init_gain);

	FUNC3(dev, FUNC0(7, 0x106), 2,
				e->rfseq_init);

	FUNC7(dev, B43_NPHY_REV3_C1_CLIP_HIGAIN_A, e->cliphi_gain);
	FUNC7(dev, B43_NPHY_REV3_C2_CLIP_HIGAIN_A, e->cliphi_gain);
	FUNC7(dev, B43_NPHY_REV3_C1_CLIP_MEDGAIN_A, e->clipmd_gain);
	FUNC7(dev, B43_NPHY_REV3_C2_CLIP_MEDGAIN_A, e->clipmd_gain);
	FUNC7(dev, B43_NPHY_REV3_C1_CLIP_LOGAIN_A, e->cliplo_gain);
	FUNC7(dev, B43_NPHY_REV3_C2_CLIP_LOGAIN_A, e->cliplo_gain);

	FUNC4(dev, B43_NPHY_CRSMINPOWER0, 0xFF00, e->crsmin);
	FUNC4(dev, B43_NPHY_CRSMINPOWERL0, 0xFF00, e->crsminl);
	FUNC4(dev, B43_NPHY_CRSMINPOWERU0, 0xFF00, e->crsminu);
	FUNC7(dev, B43_NPHY_C1_NBCLIPTHRES, e->nbclip);
	FUNC7(dev, B43_NPHY_C2_NBCLIPTHRES, e->nbclip);
	FUNC4(dev, B43_NPHY_C1_CLIPWBTHRES,
			~B43_NPHY_C1_CLIPWBTHRES_CLIP2, e->wlclip);
	FUNC4(dev, B43_NPHY_C2_CLIPWBTHRES,
			~B43_NPHY_C2_CLIPWBTHRES_CLIP2, e->wlclip);
	FUNC7(dev, B43_NPHY_CCK_SHIFTB_REF, 0x809C);
}