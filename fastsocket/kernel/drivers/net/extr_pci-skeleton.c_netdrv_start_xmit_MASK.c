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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct netdrv_private {int tx_flag; int /*<<< orphan*/  dirty_tx; int /*<<< orphan*/  cur_tx; int /*<<< orphan*/ * tx_buf; TYPE_1__* tx_info; void* mmio_addr; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  trans_start; } ;
struct TYPE_2__ {scalar_t__ mapping; struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int ETH_ZLEN ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int NUM_TX_DESC ; 
 scalar_t__ TxStatus0 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 struct netdrv_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8 (struct sk_buff *skb, struct net_device *dev)
{
	struct netdrv_private *tp = FUNC5(dev);
	void *ioaddr = tp->mmio_addr;
	int entry;

	/* Calculate the next Tx descriptor entry. */
	entry = FUNC4 (&tp->cur_tx) % NUM_TX_DESC;

	FUNC2 (tp->tx_info[entry].skb == NULL);
	FUNC2 (tp->tx_info[entry].mapping == 0);

	tp->tx_info[entry].skb = skb;
	/* tp->tx_info[entry].mapping = 0; */
	FUNC7(skb, tp->tx_buf[entry], skb->len);

	/* Note: the chip doesn't have auto-pad! */
	FUNC1 (TxStatus0 + (entry * sizeof(u32)),
		 tp->tx_flag | (skb->len >= ETH_ZLEN ? skb->len : ETH_ZLEN));

	dev->trans_start = jiffies;
	FUNC3 (&tp->cur_tx);
	if ((FUNC4 (&tp->cur_tx) - FUNC4 (&tp->dirty_tx)) >= NUM_TX_DESC)
		FUNC6 (dev);

	FUNC0 ("%s: Queued Tx packet at %p size %u to slot %d.\n",
		 dev->name, skb->data, skb->len, entry);

	return NETDEV_TX_OK;
}