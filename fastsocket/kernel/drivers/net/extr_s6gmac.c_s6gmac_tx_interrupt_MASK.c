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
typedef  scalar_t__ u8 ;
struct s6gmac {int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  tx_dma; scalar_t__ tx_skb_o; int /*<<< orphan*/ * tx_skb; scalar_t__ tx_skb_i; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 size_t S6_NUM_TX_SKB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct s6gmac* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct s6gmac *pd = FUNC1(dev);
	while (((u8)(pd->tx_skb_i - pd->tx_skb_o)) >
			FUNC4(pd->tx_dma, pd->tx_chan)) {
		FUNC0(pd->tx_skb[(pd->tx_skb_o++) % S6_NUM_TX_SKB]);
	}
	if (!FUNC3(pd->tx_dma, pd->tx_chan))
		FUNC2(dev);
}