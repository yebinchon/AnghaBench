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
struct ssb_sprom {int revision; int boardflags2_lo; } ;
struct TYPE_4__ {int /*<<< orphan*/  channel; struct b43_phy_n* n; } ;
struct b43_wldev {TYPE_2__ phy; int /*<<< orphan*/  wl; TYPE_1__* dev; } ;
struct b43_phy_n {int /*<<< orphan*/  gain_boost; } ;
struct TYPE_3__ {scalar_t__ board_vendor; scalar_t__ board_type; int board_rev; struct ssb_sprom* bus_sprom; } ;

/* Variables and functions */
 int /*<<< orphan*/  B2055_C1_LNA_GAINBST ; 
 int /*<<< orphan*/  B2055_C1_RX_BB_LPF ; 
 int /*<<< orphan*/  B2055_C1_RX_BB_MIDACHP ; 
 int /*<<< orphan*/  B2055_C1_RX_BB_REG ; 
 int /*<<< orphan*/  B2055_C1_RX_RFSPC1 ; 
 int /*<<< orphan*/  B2055_C2_LNA_GAINBST ; 
 int /*<<< orphan*/  B2055_C2_RX_BB_LPF ; 
 int /*<<< orphan*/  B2055_C2_RX_BB_MIDACHP ; 
 int /*<<< orphan*/  B2055_C2_RX_BB_REG ; 
 int /*<<< orphan*/  B2055_C2_RX_RFSPC1 ; 
 int /*<<< orphan*/  B2055_CAL_COUT2 ; 
 int /*<<< orphan*/  B2055_CAL_LPOCTL ; 
 int /*<<< orphan*/  B2055_CAL_MISC ; 
 int /*<<< orphan*/  B2055_MASTER1 ; 
 int /*<<< orphan*/  B2055_RRCCAL_NOPTSEL ; 
 int B43_BFL2_RXBB_INT_REG_DIS ; 
 scalar_t__ PCI_VENDOR_ID_BROADCOM ; 
 scalar_t__ SSB_BOARD_CB2_4321 ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct b43_wldev *dev)
{
	struct b43_phy_n *nphy = dev->phy.n;
	struct ssb_sprom *sprom = dev->dev->bus_sprom;
	bool workaround = false;

	if (sprom->revision < 4)
		workaround = (dev->dev->board_vendor != PCI_VENDOR_ID_BROADCOM
			      && dev->dev->board_type == SSB_BOARD_CB2_4321
			      && dev->dev->board_rev >= 0x41);
	else
		workaround =
			!(sprom->boardflags2_lo & B43_BFL2_RXBB_INT_REG_DIS);

	FUNC0(dev, B2055_MASTER1, 0xFFF3);
	if (workaround) {
		FUNC0(dev, B2055_C1_RX_BB_REG, 0x7F);
		FUNC0(dev, B2055_C2_RX_BB_REG, 0x7F);
	}
	FUNC1(dev, B2055_RRCCAL_NOPTSEL, 0xFFC0, 0x2C);
	FUNC4(dev, B2055_CAL_MISC, 0x3C);
	FUNC0(dev, B2055_CAL_MISC, 0xFFBE);
	FUNC2(dev, B2055_CAL_LPOCTL, 0x80);
	FUNC2(dev, B2055_CAL_MISC, 0x1);
	FUNC7(1);
	FUNC2(dev, B2055_CAL_MISC, 0x40);
	if (!FUNC3(dev, B2055_CAL_COUT2, 0x80, 0x80, 10, 2000))
		FUNC6(dev->wl, "radio post init timeout\n");
	FUNC0(dev, B2055_CAL_LPOCTL, 0xFF7F);
	FUNC5(dev, dev->phy.channel);
	FUNC4(dev, B2055_C1_RX_BB_LPF, 0x9);
	FUNC4(dev, B2055_C2_RX_BB_LPF, 0x9);
	FUNC4(dev, B2055_C1_RX_BB_MIDACHP, 0x83);
	FUNC4(dev, B2055_C2_RX_BB_MIDACHP, 0x83);
	FUNC1(dev, B2055_C1_LNA_GAINBST, 0xFFF8, 0x6);
	FUNC1(dev, B2055_C2_LNA_GAINBST, 0xFFF8, 0x6);
	if (!nphy->gain_boost) {
		FUNC2(dev, B2055_C1_RX_RFSPC1, 0x2);
		FUNC2(dev, B2055_C2_RX_RFSPC1, 0x2);
	} else {
		FUNC0(dev, B2055_C1_RX_RFSPC1, 0xFFFD);
		FUNC0(dev, B2055_C2_RX_RFSPC1, 0xFFFD);
	}
	FUNC8(2);
}