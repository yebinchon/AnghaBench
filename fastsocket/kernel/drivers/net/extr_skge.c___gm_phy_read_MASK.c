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
struct skge_hw {int /*<<< orphan*/  phy_addr; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GM_SMI_CTRL ; 
 int GM_SMI_CT_OP_RD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int GM_SMI_CT_RD_VAL ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  GM_SMI_DATA ; 
 int PHY_RETRIES ; 
 int FUNC2 (struct skge_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct skge_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct skge_hw *hw, int port, u16 reg, u16 *val)
{
	int i;

	FUNC3(hw, port, GM_SMI_CTRL,
			 FUNC0(hw->phy_addr)
			 | FUNC1(reg) | GM_SMI_CT_OP_RD);

	for (i = 0; i < PHY_RETRIES; i++) {
		FUNC4(1);
		if (FUNC2(hw, port, GM_SMI_CTRL) & GM_SMI_CT_RD_VAL)
			goto ready;
	}

	return -ETIMEDOUT;
 ready:
	*val = FUNC2(hw, port, GM_SMI_DATA);
	return 0;
}