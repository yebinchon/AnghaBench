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
struct sk_buff {unsigned char* data; unsigned int len; } ;
struct netx_eth_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  id; scalar_t__ sram_base; } ;
struct TYPE_2__ {unsigned int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  trans_start; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct netx_eth_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(struct sk_buff *skb, struct net_device *ndev)
{
	struct netx_eth_priv *priv = FUNC7(ndev);
	unsigned char *buf = skb->data;
	unsigned int len = skb->len;

	FUNC10(&priv->lock);
	FUNC5(priv->sram_base + 1560, (void *)buf, len);
	if (len < 60) {
		FUNC6(priv->sram_base + 1560 + len, 0, 60 - len);
		len = 60;
	}

	FUNC9(FUNC3(priv->id),
	           FUNC2(priv->id) |
	           FUNC1(1) |
	           FUNC0(len));

	ndev->trans_start = jiffies;
	ndev->stats.tx_packets++;
	ndev->stats.tx_bytes += skb->len;

	FUNC8(ndev);
	FUNC11(&priv->lock);
	FUNC4(skb);

	return NETDEV_TX_OK;
}