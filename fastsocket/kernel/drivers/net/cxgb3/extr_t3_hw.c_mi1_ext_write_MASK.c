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
typedef  int /*<<< orphan*/  u16 ;
struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int /*<<< orphan*/  mdio_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_MI1_DATA ; 
 int /*<<< orphan*/  A_MI1_OP ; 
 int /*<<< orphan*/  F_BUSY ; 
 int /*<<< orphan*/  MDIO_ATTEMPTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct adapter*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct port_info* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, int phy_addr, int mmd_addr,
			 u16 reg_addr, u16 val)
{
	struct port_info *pi = FUNC4(dev);
	struct adapter *adapter = pi->adapter;
	int ret;

	FUNC2(&adapter->mdio_lock);
	ret = FUNC1(adapter, phy_addr, mmd_addr, reg_addr);
	if (!ret) {
		FUNC6(adapter, A_MI1_DATA, val);
		FUNC6(adapter, A_MI1_OP, FUNC0(1));
		ret = FUNC5(adapter, A_MI1_OP, F_BUSY, 0,
				      MDIO_ATTEMPTS, 10);
	}
	FUNC3(&adapter->mdio_lock);
	return ret;
}