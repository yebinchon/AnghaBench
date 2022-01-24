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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct net_device {int /*<<< orphan*/  trans_start; int /*<<< orphan*/  dev; } ;
struct ethoc_bd {int stat; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct ethoc {unsigned int cur_tx; unsigned int num_tx; unsigned int dty_tx; int /*<<< orphan*/  lock; TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 scalar_t__ ETHOC_BUFSIZ ; 
 scalar_t__ ETHOC_ZLEN ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int FUNC0 (scalar_t__) ; 
 int TX_BD_LEN_MASK ; 
 int TX_BD_PAD ; 
 int TX_BD_READY ; 
 int TX_BD_STATS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ethoc*,unsigned int,struct ethoc_bd*) ; 
 int /*<<< orphan*/  FUNC4 (struct ethoc*,unsigned int,struct ethoc_bd*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct ethoc* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC12(struct sk_buff *skb, struct net_device *dev)
{
	struct ethoc *priv = FUNC6(dev);
	struct ethoc_bd bd;
	unsigned int entry;
	void *dest;

	if (FUNC11(skb->len > ETHOC_BUFSIZ)) {
		priv->stats.tx_errors++;
		goto out;
	}

	entry = priv->cur_tx % priv->num_tx;
	FUNC9(&priv->lock);
	priv->cur_tx++;

	FUNC3(priv, entry, &bd);
	if (FUNC11(skb->len < ETHOC_ZLEN))
		bd.stat |=  TX_BD_PAD;
	else
		bd.stat &= ~TX_BD_PAD;

	dest = FUNC8(bd.addr);
	FUNC5(dest, skb->data, skb->len);

	bd.stat &= ~(TX_BD_STATS | TX_BD_LEN_MASK);
	bd.stat |= FUNC0(skb->len);
	FUNC4(priv, entry, &bd);

	bd.stat |= TX_BD_READY;
	FUNC4(priv, entry, &bd);

	if (priv->cur_tx == (priv->dty_tx + priv->num_tx)) {
		FUNC1(&dev->dev, "stopping queue\n");
		FUNC7(dev);
	}

	dev->trans_start = jiffies;
	FUNC10(&priv->lock);
out:
	FUNC2(skb);
	return NETDEV_TX_OK;
}