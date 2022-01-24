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
struct korina_private {int /*<<< orphan*/  lock; TYPE_1__* eth_regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  ethintfc; } ;

/* Variables and functions */
 unsigned int ETH_INT_FC_OVR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,unsigned int) ; 
 struct korina_private* FUNC1 (struct net_device*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC5(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct korina_private *lp = FUNC1(dev);
	unsigned int ovr;

	FUNC3(&lp->lock);
	ovr = FUNC2(&lp->eth_regs->ethintfc);

	if (ovr & ETH_INT_FC_OVR)
		FUNC0(dev, ovr & ~ETH_INT_FC_OVR);

	FUNC4(&lp->lock);

	return IRQ_HANDLED;
}