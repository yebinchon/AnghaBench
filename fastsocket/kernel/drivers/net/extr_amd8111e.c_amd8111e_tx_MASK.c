#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_4__ {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct amd8111e_priv {int tx_complete_idx; int tx_idx; TYPE_2__* tx_ring; TYPE_1__ coal_conf; scalar_t__* tx_dma_addr; TYPE_3__** tx_skbuff; int /*<<< orphan*/  pci_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; } ;
struct TYPE_5__ {int /*<<< orphan*/  buff_count; scalar_t__ buff_phy_addr; int /*<<< orphan*/  tx_flags; } ;

/* Variables and functions */
 int NUM_TX_BUFFERS ; 
 int OWN_BIT ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int TX_RING_DR_MOD_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct amd8111e_priv* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct amd8111e_priv* lp = FUNC2(dev);
	int tx_index = lp->tx_complete_idx & TX_RING_DR_MOD_MASK;
	int status;
	/* Complete all the transmit packet */
	while (lp->tx_complete_idx != lp->tx_idx){
		tx_index =  lp->tx_complete_idx & TX_RING_DR_MOD_MASK;
		status = FUNC1(lp->tx_ring[tx_index].tx_flags);

		if(status & OWN_BIT)
			break;	/* It still hasn't been Txed */

		lp->tx_ring[tx_index].buff_phy_addr = 0;

		/* We must free the original skb */
		if (lp->tx_skbuff[tx_index]) {
			FUNC5(lp->pci_dev, lp->tx_dma_addr[tx_index],
				  	lp->tx_skbuff[tx_index]->len,
					PCI_DMA_TODEVICE);
			FUNC0 (lp->tx_skbuff[tx_index]);
			lp->tx_skbuff[tx_index] = NULL;
			lp->tx_dma_addr[tx_index] = 0;
		}
		lp->tx_complete_idx++;
		/*COAL update tx coalescing parameters */
		lp->coal_conf.tx_packets++;
		lp->coal_conf.tx_bytes +=
			FUNC1(lp->tx_ring[tx_index].buff_count);

		if (FUNC3(dev) &&
			lp->tx_complete_idx > lp->tx_idx - NUM_TX_BUFFERS +2){
			/* The ring is no longer full, clear tbusy. */
			/* lp->tx_full = 0; */
			FUNC4 (dev);
		}
	}
	return 0;
}