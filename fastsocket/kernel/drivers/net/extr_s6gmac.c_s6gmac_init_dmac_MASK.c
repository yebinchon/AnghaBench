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
struct s6gmac {int /*<<< orphan*/  rx_dma; int /*<<< orphan*/  tx_dma; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  tx_chan; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int S6_HIFDMA_GMACRX ; 
 int S6_HIFDMA_GMACTX ; 
 struct s6gmac* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(struct net_device *dev)
{
	struct s6gmac *pd = FUNC0(dev);
	FUNC1(pd->tx_dma, pd->tx_chan);
	FUNC1(pd->rx_dma, pd->rx_chan);
	FUNC2(pd->tx_dma, 1 << S6_HIFDMA_GMACTX);
	FUNC2(pd->rx_dma, 1 << S6_HIFDMA_GMACRX);
}