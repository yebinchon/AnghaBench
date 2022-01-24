#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tulip_private {int cur_tx; int dirty_tx; int /*<<< orphan*/  lock; scalar_t__ base_addr; TYPE_2__* tx_ring; TYPE_1__* tx_buffers; int /*<<< orphan*/  pdev; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct net_device {int /*<<< orphan*/  trans_start; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int dma_addr_t ;
struct TYPE_4__ {void* status; void* length; void* buffer1; } ;
struct TYPE_3__ {int mapping; struct sk_buff* skb; } ;

/* Variables and functions */
 scalar_t__ CSR1 ; 
 int DESC_RING_WRAP ; 
 int DescOwned ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int TX_RING_SIZE ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  jiffies ; 
 struct tulip_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static netdev_tx_t
FUNC8(struct sk_buff *skb, struct net_device *dev)
{
	struct tulip_private *tp = FUNC2(dev);
	int entry;
	u32 flag;
	dma_addr_t mapping;
	unsigned long flags;

	FUNC5(&tp->lock, flags);

	/* Calculate the next Tx descriptor entry. */
	entry = tp->cur_tx % TX_RING_SIZE;

	tp->tx_buffers[entry].skb = skb;
	mapping = FUNC4(tp->pdev, skb->data,
				 skb->len, PCI_DMA_TODEVICE);
	tp->tx_buffers[entry].mapping = mapping;
	tp->tx_ring[entry].buffer1 = FUNC0(mapping);

	if (tp->cur_tx - tp->dirty_tx < TX_RING_SIZE/2) {/* Typical path */
		flag = 0x60000000; /* No interrupt */
	} else if (tp->cur_tx - tp->dirty_tx == TX_RING_SIZE/2) {
		flag = 0xe0000000; /* Tx-done intr. */
	} else if (tp->cur_tx - tp->dirty_tx < TX_RING_SIZE - 2) {
		flag = 0x60000000; /* No Tx-done intr. */
	} else {		/* Leave room for set_rx_mode() to fill entries. */
		flag = 0xe0000000; /* Tx-done intr. */
		FUNC3(dev);
	}
	if (entry == TX_RING_SIZE-1)
		flag = 0xe0000000 | DESC_RING_WRAP;

	tp->tx_ring[entry].length = FUNC0(skb->len | flag);
	/* if we were using Transmit Automatic Polling, we would need a
	 * wmb() here. */
	tp->tx_ring[entry].status = FUNC0(DescOwned);
	FUNC7();

	tp->cur_tx++;

	/* Trigger an immediate transmit demand. */
	FUNC1(0, tp->base_addr + CSR1);

	FUNC6(&tp->lock, flags);

	dev->trans_start = jiffies;

	return NETDEV_TX_OK;
}