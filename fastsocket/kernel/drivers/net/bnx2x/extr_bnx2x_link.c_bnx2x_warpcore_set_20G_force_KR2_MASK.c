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
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDIO_AER_BLOCK_AER_REG ; 
 int /*<<< orphan*/  MDIO_AN_DEVAD ; 
 int /*<<< orphan*/  MDIO_AN_REG_CTRL ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_REG_BANK_AER_BLOCK ; 
 int /*<<< orphan*/  MDIO_WC_DEVAD ; 
 int /*<<< orphan*/  MDIO_WC_REG_CL72_USERB0_CL72_MISC1_CONTROL ; 
 int /*<<< orphan*/  MDIO_WC_REG_CL72_USERB0_CL72_TX_FIR_TAP ; 
 int /*<<< orphan*/  MDIO_WC_REG_CL73_USERB0_CTRL ; 
 int /*<<< orphan*/  MDIO_WC_REG_DIGITAL4_MISC3 ; 
 int /*<<< orphan*/  MDIO_WC_REG_PMD_KR_CONTROL ; 
 int /*<<< orphan*/  MDIO_WC_REG_SERDESDIGITAL_MISC1 ; 
 int /*<<< orphan*/  MDIO_WC_REG_XGXSBLK0_XGXSCONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct link_params*,struct bnx2x_phy*) ; 

__attribute__((used)) static void FUNC6(struct bnx2x_phy *phy,
					     struct link_params *params)
{
	u16 val;
	struct bnx2x *bp = params->bp;
	/* Set global registers, so set AER lane to 0 */
	FUNC0(bp, phy, MDIO_REG_BANK_AER_BLOCK,
			  MDIO_AER_BLOCK_AER_REG, 0);

	/* Disable sequencer */
	FUNC2(bp, phy, MDIO_WC_DEVAD,
				  MDIO_WC_REG_XGXSBLK0_XGXSCONTROL, ~(1<<13));

	FUNC5(params, phy);

	FUNC2(bp, phy, MDIO_PMA_DEVAD,
				  MDIO_WC_REG_PMD_KR_CONTROL, ~(1<<1));
	FUNC4(bp, phy, MDIO_AN_DEVAD,
			 MDIO_AN_REG_CTRL, 0);
	/* Turn off CL73 */
	FUNC1(bp, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_CL73_USERB0_CTRL, &val);
	val &= ~(1<<5);
	val |= (1<<6);
	FUNC4(bp, phy, MDIO_WC_DEVAD,
			 MDIO_WC_REG_CL73_USERB0_CTRL, val);

	/* Set 20G KR2 force speed */
	FUNC3(bp, phy, MDIO_WC_DEVAD,
				 MDIO_WC_REG_SERDESDIGITAL_MISC1, 0x1f);

	FUNC3(bp, phy, MDIO_WC_DEVAD,
				 MDIO_WC_REG_DIGITAL4_MISC3, (1<<7));

	FUNC1(bp, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_CL72_USERB0_CL72_MISC1_CONTROL, &val);
	val &= ~(3<<14);
	val |= (1<<15);
	FUNC4(bp, phy, MDIO_WC_DEVAD,
			 MDIO_WC_REG_CL72_USERB0_CL72_MISC1_CONTROL, val);
	FUNC4(bp, phy, MDIO_WC_DEVAD,
			 MDIO_WC_REG_CL72_USERB0_CL72_TX_FIR_TAP, 0x835A);

	/* Enable sequencer (over lane 0) */
	FUNC0(bp, phy, MDIO_REG_BANK_AER_BLOCK,
			  MDIO_AER_BLOCK_AER_REG, 0);

	FUNC3(bp, phy, MDIO_WC_DEVAD,
				 MDIO_WC_REG_XGXSBLK0_XGXSCONTROL, (1<<13));

	FUNC5(params, phy);
}