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
struct s6gmac {scalar_t__ tx_skb_i; scalar_t__ tx_skb_o; scalar_t__ rx_skb_i; scalar_t__ rx_skb_o; int /*<<< orphan*/  lock; int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/ * tx_skb; int /*<<< orphan*/  phydev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 size_t S6_NUM_RX_SKB ; 
 size_t S6_NUM_TX_SKB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct s6gmac* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct s6gmac *pd = FUNC1(dev);
	unsigned long flags;
	FUNC2(dev);
	FUNC3(pd->phydev);
	FUNC6(&pd->lock, flags);
	FUNC4(dev);
	FUNC5(dev);
	while (pd->tx_skb_i != pd->tx_skb_o)
		FUNC0(pd->tx_skb[(pd->tx_skb_o++) % S6_NUM_TX_SKB]);
	while (pd->rx_skb_i != pd->rx_skb_o)
		FUNC0(pd->rx_skb[(pd->rx_skb_o++) % S6_NUM_RX_SKB]);
	FUNC7(&pd->lock, flags);
	return 0;
}