#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ mbit; } ;
struct s6gmac {TYPE_2__* phydev; int /*<<< orphan*/  lock; scalar_t__ reg; int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  tx_dma; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  rx_dma; TYPE_1__ link; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  link; } ;

/* Variables and functions */
 scalar_t__ S6_GMAC_HOST_INTMASK ; 
 int S6_GMAC_HOST_INT_RXBURSTUNDER ; 
 int S6_GMAC_HOST_INT_RXPOSTRFULL ; 
 int S6_GMAC_HOST_INT_RXPOSTRUNDER ; 
 int S6_GMAC_HOST_INT_TXBURSTOVER ; 
 int S6_GMAC_HOST_INT_TXPREWOVER ; 
 struct s6gmac* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct s6gmac*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev)
{
	struct s6gmac *pd = FUNC0(dev);
	unsigned long flags;
	FUNC2(pd->phydev);
	FUNC10(&pd->lock, flags);
	pd->link.mbit = 0;
	FUNC8(dev, pd->phydev->link);
	FUNC5(dev);
	FUNC7(dev);
	FUNC6(dev);
	FUNC9(pd);
	FUNC4(pd->rx_dma, pd->rx_chan,
		2, 1, 0, 1, 0, 0, 0, 7, -1, 2, 0, 1);
	FUNC4(pd->tx_dma, pd->tx_chan,
		2, 0, 1, 0, 0, 0, 0, 7, -1, 2, 0, 1);
	FUNC12(0 << S6_GMAC_HOST_INT_TXBURSTOVER |
		0 << S6_GMAC_HOST_INT_TXPREWOVER |
		0 << S6_GMAC_HOST_INT_RXBURSTUNDER |
		0 << S6_GMAC_HOST_INT_RXPOSTRFULL |
		0 << S6_GMAC_HOST_INT_RXPOSTRUNDER,
		pd->reg + S6_GMAC_HOST_INTMASK);
	FUNC11(&pd->lock, flags);
	FUNC3(pd->phydev);
	FUNC1(dev);
	return 0;
}