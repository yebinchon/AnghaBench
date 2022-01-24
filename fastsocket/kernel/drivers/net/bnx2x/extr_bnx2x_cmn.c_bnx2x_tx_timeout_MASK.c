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
struct net_device {int dummy; } ;
struct bnx2x {int /*<<< orphan*/  sp_rtnl_task; int /*<<< orphan*/  sp_rtnl_state; int /*<<< orphan*/  panic; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_SP_RTNL_TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct bnx2x* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct net_device *dev)
{
	struct bnx2x *bp = FUNC1(dev);

#ifdef BNX2X_STOP_ON_ERROR
	if (!bp->panic)
		bnx2x_panic();
#endif

	FUNC5();
	FUNC3(BNX2X_SP_RTNL_TX_TIMEOUT, &bp->sp_rtnl_state);
	FUNC4();

	/* This allows the netif to be shutdown gracefully before resetting */
	FUNC2(&bp->sp_rtnl_task, 0);
}