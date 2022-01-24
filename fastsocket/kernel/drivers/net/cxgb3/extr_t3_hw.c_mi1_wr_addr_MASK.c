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
typedef  int u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_MI1_ADDR ; 
 int /*<<< orphan*/  A_MI1_CFG ; 
 int /*<<< orphan*/  A_MI1_DATA ; 
 int /*<<< orphan*/  A_MI1_OP ; 
 int /*<<< orphan*/  F_BUSY ; 
 int /*<<< orphan*/  MDIO_ATTEMPTS ; 
 int /*<<< orphan*/  M_ST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct adapter *adapter, int phy_addr, int mmd_addr,
		       int reg_addr)
{
	u32 addr = FUNC2(mmd_addr) | FUNC1(phy_addr);

	FUNC4(adapter, A_MI1_CFG, FUNC3(M_ST), 0);
	FUNC6(adapter, A_MI1_ADDR, addr);
	FUNC6(adapter, A_MI1_DATA, reg_addr);
	FUNC6(adapter, A_MI1_OP, FUNC0(0));
	return FUNC5(adapter, A_MI1_OP, F_BUSY, 0,
			       MDIO_ATTEMPTS, 10);
}