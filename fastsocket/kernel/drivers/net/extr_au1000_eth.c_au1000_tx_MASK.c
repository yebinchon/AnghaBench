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
struct TYPE_3__ {int buff_stat; int len; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ tx_dma_t ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct net_device_stats {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {int /*<<< orphan*/  trans_start; int /*<<< orphan*/  name; struct net_device_stats stats; } ;
struct au1000_private {size_t tx_head; int tx_full; TYPE_2__** tx_db_inuse; TYPE_1__** tx_dma_ring; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_4__ {int dma_addr; scalar_t__ vaddr; } ;
typedef  TYPE_2__ db_dest_t ;

/* Variables and functions */
 int ETH_ZLEN ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int NUM_TX_DMA ; 
 int TX_DMA_ENABLE ; 
 int TX_T_DONE ; 
 int au1000_debug ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct au1000_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC8(struct sk_buff *skb, struct net_device *dev)
{
	struct au1000_private *aup = FUNC2(dev);
	struct net_device_stats *ps = &dev->stats;
	volatile tx_dma_t *ptxd;
	u32 buff_stat;
	db_dest_t *pDB;
	int i;

	if (au1000_debug > 5)
		FUNC5("%s: tx: aup %x len=%d, data=%p, head %d\n",
				dev->name, (unsigned)aup, skb->len,
				skb->data, aup->tx_head);

	ptxd = aup->tx_dma_ring[aup->tx_head];
	buff_stat = ptxd->buff_stat;
	if (buff_stat & TX_DMA_ENABLE) {
		/* We've wrapped around and the transmitter is still busy */
		FUNC3(dev);
		aup->tx_full = 1;
		return NETDEV_TX_BUSY;
	}
	else if (buff_stat & TX_T_DONE) {
		FUNC7(dev, ptxd->status);
		ptxd->len = 0;
	}

	if (aup->tx_full) {
		aup->tx_full = 0;
		FUNC4(dev);
	}

	pDB = aup->tx_db_inuse[aup->tx_head];
	FUNC6(skb, pDB->vaddr, skb->len);
	if (skb->len < ETH_ZLEN) {
		for (i=skb->len; i<ETH_ZLEN; i++) {
			((char *)pDB->vaddr)[i] = 0;
		}
		ptxd->len = ETH_ZLEN;
	}
	else
		ptxd->len = skb->len;

	ps->tx_packets++;
	ps->tx_bytes += ptxd->len;

	ptxd->buff_stat = pDB->dma_addr | TX_DMA_ENABLE;
	FUNC0();
	FUNC1(skb);
	aup->tx_head = (aup->tx_head + 1) & (NUM_TX_DMA - 1);
	dev->trans_start = jiffies;
	return NETDEV_TX_OK;
}