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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct netdev_private {struct sk_buff** tx_skbuff; TYPE_1__* tx_ring; int /*<<< orphan*/  pdev; struct sk_buff** rx_skbuff; TYPE_1__* rx_ring; int /*<<< orphan*/  timer; } ;
struct net_device {long base_addr; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {scalar_t__ fraginfo; scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ IntEnable ; 
 scalar_t__ MACCtrl ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int RX_RING_SIZE ; 
 int RxDisable ; 
 int StatsDisable ; 
 int TX_RING_SIZE ; 
 int TxDisable ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct netdev_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC9 (struct net_device *dev)
{
	long ioaddr = dev->base_addr;
	struct netdev_private *np = FUNC4(dev);
	struct sk_buff *skb;
	int i;

	FUNC5 (dev);

	/* Disable interrupts */
	FUNC8 (0, ioaddr + IntEnable);

	/* Stop Tx and Rx logics */
	FUNC7 (TxDisable | RxDisable | StatsDisable, ioaddr + MACCtrl);

	FUNC3 (dev->irq, dev);
	FUNC0 (&np->timer);

	/* Free all the skbuffs in the queue. */
	for (i = 0; i < RX_RING_SIZE; i++) {
		np->rx_ring[i].status = 0;
		np->rx_ring[i].fraginfo = 0;
		skb = np->rx_skbuff[i];
		if (skb) {
			FUNC6(np->pdev,
					 FUNC1(&np->rx_ring[i]),
					 skb->len, PCI_DMA_FROMDEVICE);
			FUNC2 (skb);
			np->rx_skbuff[i] = NULL;
		}
	}
	for (i = 0; i < TX_RING_SIZE; i++) {
		skb = np->tx_skbuff[i];
		if (skb) {
			FUNC6(np->pdev,
					 FUNC1(&np->tx_ring[i]),
					 skb->len, PCI_DMA_TODEVICE);
			FUNC2 (skb);
			np->tx_skbuff[i] = NULL;
		}
	}

	return 0;
}