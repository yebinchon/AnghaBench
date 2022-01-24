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
struct skge_port {int port; scalar_t__ flow_status; struct skge_hw* hw; } ;
struct skge_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FLOW_STAT_REM_SEND ; 
 int GM_GPCR_RX_ENA ; 
 int GM_GPCR_TX_ENA ; 
 int /*<<< orphan*/  GM_GP_CTRL ; 
 int /*<<< orphan*/  PHY_MARV_AUNE_ADV ; 
 int PHY_M_AN_ASP ; 
 int FUNC0 (struct skge_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct skge_hw*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct skge_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct skge_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct skge_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct skge_hw*,int) ; 

__attribute__((used)) static void FUNC6(struct skge_port *skge)
{
	struct skge_hw *hw = skge->hw;
	int port = skge->port;
	u16 ctrl;

	ctrl = FUNC2(hw, port, GM_GP_CTRL);
	ctrl &= ~(GM_GPCR_RX_ENA | GM_GPCR_TX_ENA);
	FUNC3(hw, port, GM_GP_CTRL, ctrl);

	if (skge->flow_status == FLOW_STAT_REM_SEND) {
		ctrl = FUNC0(hw, port, PHY_MARV_AUNE_ADV);
		ctrl |= PHY_M_AN_ASP;
		/* restore Asymmetric Pause bit */
		FUNC1(hw, port, PHY_MARV_AUNE_ADV, ctrl);
	}

	FUNC4(skge);

	FUNC5(hw, port);
}