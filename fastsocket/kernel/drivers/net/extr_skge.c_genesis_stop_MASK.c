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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct skge_port {int port; struct skge_hw* hw; } ;
struct skge_hw {scalar_t__ phy_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  B2_GP_IO ; 
 int /*<<< orphan*/  B3_PA_CTRL ; 
 int /*<<< orphan*/  GP_DIR_0 ; 
 int /*<<< orphan*/  GP_DIR_2 ; 
 int /*<<< orphan*/  GP_IO_0 ; 
 int /*<<< orphan*/  GP_IO_2 ; 
 int MFF_CLR_MAC_RST ; 
 int MFF_SET_MAC_RST ; 
 int PA_CLR_TO_TX1 ; 
 int PA_CLR_TO_TX2 ; 
 scalar_t__ SK_PHY_XMAC ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_MFF_CTRL1 ; 
 int /*<<< orphan*/  XM_MMU_CMD ; 
 int XM_MMU_ENA_RX ; 
 int XM_MMU_ENA_TX ; 
 int /*<<< orphan*/  FUNC1 (struct skge_hw*,int) ; 
 int FUNC2 (struct skge_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct skge_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct skge_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct skge_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct skge_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct skge_hw*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct skge_port *skge)
{
	struct skge_hw *hw = skge->hw;
	int port = skge->port;
	unsigned retries = 1000;
	u16 cmd;

 	/* Disable Tx and Rx */
	cmd = FUNC6(hw, port, XM_MMU_CMD);
	cmd &= ~(XM_MMU_ENA_RX | XM_MMU_ENA_TX);
	FUNC7(hw, port, XM_MMU_CMD, cmd);

	FUNC1(hw, port);

	/* Clear Tx packet arbiter timeout IRQ */
	FUNC4(hw, B3_PA_CTRL,
		     port == 0 ? PA_CLR_TO_TX1 : PA_CLR_TO_TX2);

	/* Reset the MAC */
	FUNC4(hw, FUNC0(port, TX_MFF_CTRL1), MFF_CLR_MAC_RST);
	do {
		FUNC4(hw, FUNC0(port, TX_MFF_CTRL1), MFF_SET_MAC_RST);
		if (!(FUNC2(hw, FUNC0(port, TX_MFF_CTRL1)) & MFF_SET_MAC_RST))
			break;
	} while (--retries > 0);

	/* For external PHYs there must be special handling */
	if (hw->phy_type != SK_PHY_XMAC) {
		u32 reg = FUNC3(hw, B2_GP_IO);
		if (port == 0) {
			reg |= GP_DIR_0;
			reg &= ~GP_IO_0;
		} else {
			reg |= GP_DIR_2;
			reg &= ~GP_IO_2;
		}
		FUNC5(hw, B2_GP_IO, reg);
		FUNC3(hw, B2_GP_IO);
	}

	FUNC7(hw, port, XM_MMU_CMD,
			FUNC6(hw, port, XM_MMU_CMD)
			& ~(XM_MMU_ENA_RX | XM_MMU_ENA_TX));

	FUNC6(hw, port, XM_MMU_CMD);
}