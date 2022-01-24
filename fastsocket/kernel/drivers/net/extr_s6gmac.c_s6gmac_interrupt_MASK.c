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
struct s6gmac {int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  tx_dma; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  rx_dma; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 struct s6gmac* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct s6gmac*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct s6gmac*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *)dev_id;
	struct s6gmac *pd = FUNC0(dev);
	if (!dev)
		return IRQ_NONE;
	FUNC6(&pd->lock);
	if (FUNC1(pd->rx_dma, pd->rx_chan))
		FUNC3(dev);
	FUNC2(pd);
	if (FUNC1(pd->tx_dma, pd->tx_chan))
		FUNC5(dev);
	FUNC4(pd, 0);
	FUNC4(pd, 1);
	FUNC7(&pd->lock);
	return IRQ_HANDLED;
}