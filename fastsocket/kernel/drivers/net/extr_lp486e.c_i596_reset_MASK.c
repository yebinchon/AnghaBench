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
struct net_device {int dummy; } ;
struct TYPE_2__ {int command; } ;
struct i596_private {TYPE_1__ scb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int CUC_ABORT ; 
 int RX_ABORT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev, struct i596_private *lp, int ioaddr) {

	if (lp->scb.command && FUNC4(dev, "i596_reset", 100))
		;

	FUNC7(dev);

	lp->scb.command = CUC_ABORT | RX_ABORT;
	FUNC0();
	FUNC1();

	/* wait for shutdown */
	if (lp->scb.command && FUNC4(dev, "i596_reset(2)", 400))
		;

	FUNC2(dev);
	FUNC3(dev);

	FUNC6(dev);
	/*dev_kfree_skb(skb, FREE_WRITE);*/
	FUNC5(dev);
}