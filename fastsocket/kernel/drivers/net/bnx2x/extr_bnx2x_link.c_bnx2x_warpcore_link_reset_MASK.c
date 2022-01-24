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
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int flags; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FLAGS_WC_DUAL_MODE ; 
 int /*<<< orphan*/  MDIO_AER_BLOCK_AER_REG ; 
 int /*<<< orphan*/  MDIO_REG_BANK_AER_BLOCK ; 
 int /*<<< orphan*/  MDIO_WC_DEVAD ; 
 int /*<<< orphan*/  MDIO_WC_REG_COMBO_IEEE0_MIICTRL ; 
 int /*<<< orphan*/  MDIO_WC_REG_IEEE0BLK_MIICNTL ; 
 int /*<<< orphan*/  MDIO_WC_REG_XGXSBLK0_XGXSCONTROL ; 
 int /*<<< orphan*/  MDIO_WC_REG_XGXSBLK1_LANECTRL0 ; 
 int /*<<< orphan*/  MDIO_WC_REG_XGXSBLK1_LANECTRL1 ; 
 int /*<<< orphan*/  MDIO_WC_REG_XGXSBLK1_LANECTRL2 ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct bnx2x_phy*,struct link_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct link_params*,struct bnx2x_phy*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,struct link_params*) ; 
 int /*<<< orphan*/  FUNC7 (struct link_params*,struct bnx2x_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,struct bnx2x_phy*,int) ; 

__attribute__((used)) static void FUNC9(struct bnx2x_phy *phy,
				      struct link_params *params)
{
	struct bnx2x *bp = params->bp;
	u16 val16, lane;
	FUNC7(params, phy, 0);
	FUNC6(bp, params);
	FUNC5(params, phy);
	/* Global register */
	FUNC8(bp, phy, 1);

	/* Clear loopback settings (if any) */
	/* 10G & 20G */
	FUNC2(bp, phy, MDIO_WC_DEVAD,
				  MDIO_WC_REG_COMBO_IEEE0_MIICTRL, 0xBFFF);

	FUNC2(bp, phy, MDIO_WC_DEVAD,
				  MDIO_WC_REG_IEEE0BLK_MIICNTL, 0xfffe);

	/* Update those 1-copy registers */
	FUNC0(bp, phy, MDIO_REG_BANK_AER_BLOCK,
			  MDIO_AER_BLOCK_AER_REG, 0);
	/* Enable 1G MDIO (1-copy) */
	FUNC2(bp, phy, MDIO_WC_DEVAD,
				  MDIO_WC_REG_XGXSBLK0_XGXSCONTROL,
				  ~0x10);

	FUNC2(bp, phy, MDIO_WC_DEVAD,
				  MDIO_WC_REG_XGXSBLK1_LANECTRL2, 0xff00);
	lane = FUNC4(phy, params);
	/* Disable CL36 PCS Tx */
	FUNC1(bp, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_XGXSBLK1_LANECTRL0, &val16);
	val16 |= (0x11 << lane);
	if (phy->flags & FLAGS_WC_DUAL_MODE)
		val16 |= (0x22 << lane);
	FUNC3(bp, phy, MDIO_WC_DEVAD,
			 MDIO_WC_REG_XGXSBLK1_LANECTRL0, val16);

	FUNC1(bp, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_XGXSBLK1_LANECTRL1, &val16);
	val16 &= ~(0x0303 << (lane << 1));
	val16 |= (0x0101 << (lane << 1));
	if (phy->flags & FLAGS_WC_DUAL_MODE) {
		val16 &= ~(0x0c0c << (lane << 1));
		val16 |= (0x0404 << (lane << 1));
	}

	FUNC3(bp, phy, MDIO_WC_DEVAD,
			 MDIO_WC_REG_XGXSBLK1_LANECTRL1, val16);
	/* Restore AER */
	FUNC5(params, phy);

}