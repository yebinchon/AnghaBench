#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct slave {int /*<<< orphan*/  perm_hwaddr; } ;
struct TYPE_2__ {int rlb_rebalance; scalar_t__ rlb_enabled; int /*<<< orphan*/  tx_rebalance_counter; } ;
struct bonding {TYPE_1__ alb_info; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOND_TLB_REBALANCE_TICKS ; 
 int FUNC0 (struct bonding*,struct slave*) ; 
 int FUNC1 (struct slave*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct slave*) ; 

int FUNC5(struct bonding *bond, struct slave *slave)
{
	int res;

	res = FUNC1(slave, slave->perm_hwaddr);
	if (res) {
		return res;
	}

	/* caller must hold the bond lock for write since the mac addresses
	 * are compared and may be swapped.
	 */
	FUNC2(&bond->lock);

	res = FUNC0(bond, slave);

	FUNC3(&bond->lock);

	if (res) {
		return res;
	}

	FUNC4(slave);

	/* order a rebalance ASAP */
	bond->alb_info.tx_rebalance_counter = BOND_TLB_REBALANCE_TICKS;

	if (bond->alb_info.rlb_enabled) {
		bond->alb_info.rlb_rebalance = 1;
	}

	return 0;
}