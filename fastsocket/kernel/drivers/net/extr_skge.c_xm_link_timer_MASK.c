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
struct skge_port {int port; int /*<<< orphan*/  link_timer; struct skge_hw* hw; struct net_device* netdev; } ;
struct skge_hw {int /*<<< orphan*/  phy_lock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ LINK_HZ ; 
 int XM_GP_INP_ASS ; 
 int /*<<< orphan*/  XM_GP_PORT ; 
 int /*<<< orphan*/  XM_IMSK ; 
 int /*<<< orphan*/  XM_ISRC ; 
 int XM_IS_INP_ASS ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int FUNC6 (struct skge_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct skge_hw*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(unsigned long arg)
{
	struct skge_port *skge = (struct skge_port *) arg;
	struct net_device *dev = skge->netdev;
 	struct skge_hw *hw = skge->hw;
	int port = skge->port;
	int i;
	unsigned long flags;

	if (!FUNC1(dev))
		return;

	FUNC3(&hw->phy_lock, flags);

	/*
	 * Verify that the link by checking GPIO register three times.
	 * This pin has the signal from the link_sync pin connected to it.
	 */
	for (i = 0; i < 3; i++) {
		if (FUNC6(hw, port, XM_GP_PORT) & XM_GP_INP_ASS)
			goto link_down;
	}

        /* Re-enable interrupt to detect link down */
	if (FUNC5(dev)) {
		u16 msk = FUNC6(hw, port, XM_IMSK);
		msk &= ~XM_IS_INP_ASS;
		FUNC7(hw, port, XM_IMSK, msk);
		FUNC6(hw, port, XM_ISRC);
	} else {
link_down:
		FUNC0(&skge->link_timer,
			  FUNC2(jiffies + LINK_HZ));
	}
	FUNC4(&hw->phy_lock, flags);
}