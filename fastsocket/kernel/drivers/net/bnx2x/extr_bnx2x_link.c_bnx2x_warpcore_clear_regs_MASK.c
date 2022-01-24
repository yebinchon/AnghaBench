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
typedef  size_t u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_reg_set {int member_2; int val; scalar_t__ reg; int /*<<< orphan*/  const devad; int /*<<< orphan*/  member_1; int /*<<< orphan*/  const member_0; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct bnx2x_reg_set*) ; 
#define  MDIO_AN_DEVAD 140 
#define  MDIO_AN_REG_CTRL 139 
#define  MDIO_WC_DEVAD 138 
#define  MDIO_WC_REG_COMBO_IEEE0_MIICTRL 137 
#define  MDIO_WC_REG_DIGITAL4_MISC3 136 
#define  MDIO_WC_REG_FX100_CTRL1 135 
#define  MDIO_WC_REG_FX100_CTRL3 134 
#define  MDIO_WC_REG_IEEE0BLK_MIICNTL 133 
 int /*<<< orphan*/  MDIO_WC_REG_RX66_CONTROL ; 
#define  MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1 132 
#define  MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2 131 
#define  MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X3 130 
#define  MDIO_WC_REG_SERDESDIGITAL_MISC1 129 
 scalar_t__ MDIO_WC_REG_TX0_TX_DRIVER ; 
#define  MDIO_WC_REG_TX_FIR_TAP 128 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/  const,scalar_t__,int) ; 
 size_t FUNC3 (struct bnx2x_phy*,struct link_params*) ; 

__attribute__((used)) static void FUNC4(struct bnx2x_phy *phy,
				      struct link_params *params,
				      u16 lane)
{
	struct bnx2x *bp = params->bp;
	u16 i;
	static struct bnx2x_reg_set wc_regs[] = {
		{MDIO_AN_DEVAD, MDIO_AN_REG_CTRL, 0},
		{MDIO_WC_DEVAD, MDIO_WC_REG_FX100_CTRL1, 0x014a},
		{MDIO_WC_DEVAD, MDIO_WC_REG_FX100_CTRL3, 0x0800},
		{MDIO_WC_DEVAD, MDIO_WC_REG_DIGITAL4_MISC3, 0x8008},
		{MDIO_WC_DEVAD, MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1,
			0x0195},
		{MDIO_WC_DEVAD, MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2,
			0x0007},
		{MDIO_WC_DEVAD, MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X3,
			0x0002},
		{MDIO_WC_DEVAD, MDIO_WC_REG_SERDESDIGITAL_MISC1, 0x6000},
		{MDIO_WC_DEVAD, MDIO_WC_REG_TX_FIR_TAP, 0x0000},
		{MDIO_WC_DEVAD, MDIO_WC_REG_IEEE0BLK_MIICNTL, 0x2040},
		{MDIO_WC_DEVAD, MDIO_WC_REG_COMBO_IEEE0_MIICTRL, 0x0140}
	};
	/* Set XFI clock comp as default. */
	FUNC1(bp, phy, MDIO_WC_DEVAD,
				 MDIO_WC_REG_RX66_CONTROL, (3<<13));

	for (i = 0; i < FUNC0(wc_regs); i++)
		FUNC2(bp, phy, wc_regs[i].devad, wc_regs[i].reg,
				 wc_regs[i].val);

	lane = FUNC3(phy, params);
	FUNC2(bp, phy, MDIO_WC_DEVAD,
			 MDIO_WC_REG_TX0_TX_DRIVER + 0x10*lane, 0x0990);

}