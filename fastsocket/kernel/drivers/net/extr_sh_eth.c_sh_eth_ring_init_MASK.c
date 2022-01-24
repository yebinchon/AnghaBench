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
struct sh_eth_txdesc {int dummy; } ;
struct sh_eth_rxdesc {int dummy; } ;
struct sh_eth_private {int rx_buf_sz; int /*<<< orphan*/  rx_desc_dma; void* rx_ring; void* tx_ring; int /*<<< orphan*/  tx_desc_dma; scalar_t__ dirty_rx; void* tx_skbuff; void* rx_skbuff; } ;
struct net_device {int mtu; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PKT_BUF_SZ ; 
 int RX_RING_SIZE ; 
 int TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct sh_eth_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC4(ndev);
	int rx_ringsize, tx_ringsize, ret = 0;

	/*
	 * +26 gets the maximum ethernet encapsulation, +7 & ~7 because the
	 * card needs room to do 8 byte alignment, +2 so we can reserve
	 * the first 2 bytes, and +16 gets room for the status word from the
	 * card.
	 */
	mdp->rx_buf_sz = (ndev->mtu <= 1492 ? PKT_BUF_SZ :
			  (((ndev->mtu + 26 + 7) & ~7) + 2 + 16));

	/* Allocate RX and TX skb rings */
	mdp->rx_skbuff = FUNC3(sizeof(*mdp->rx_skbuff) * RX_RING_SIZE,
				GFP_KERNEL);
	if (!mdp->rx_skbuff) {
		FUNC0(&ndev->dev, "Cannot allocate Rx skb\n");
		ret = -ENOMEM;
		return ret;
	}

	mdp->tx_skbuff = FUNC3(sizeof(*mdp->tx_skbuff) * TX_RING_SIZE,
				GFP_KERNEL);
	if (!mdp->tx_skbuff) {
		FUNC0(&ndev->dev, "Cannot allocate Tx skb\n");
		ret = -ENOMEM;
		goto skb_ring_free;
	}

	/* Allocate all Rx descriptors. */
	rx_ringsize = sizeof(struct sh_eth_rxdesc) * RX_RING_SIZE;
	mdp->rx_ring = FUNC1(NULL, rx_ringsize, &mdp->rx_desc_dma,
			GFP_KERNEL);

	if (!mdp->rx_ring) {
		FUNC0(&ndev->dev, "Cannot allocate Rx Ring (size %d bytes)\n",
			rx_ringsize);
		ret = -ENOMEM;
		goto desc_ring_free;
	}

	mdp->dirty_rx = 0;

	/* Allocate all Tx descriptors. */
	tx_ringsize = sizeof(struct sh_eth_txdesc) * TX_RING_SIZE;
	mdp->tx_ring = FUNC1(NULL, tx_ringsize, &mdp->tx_desc_dma,
			GFP_KERNEL);
	if (!mdp->tx_ring) {
		FUNC0(&ndev->dev, "Cannot allocate Tx Ring (size %d bytes)\n",
			tx_ringsize);
		ret = -ENOMEM;
		goto desc_ring_free;
	}
	return ret;

desc_ring_free:
	/* free DMA buffer */
	FUNC2(NULL, rx_ringsize, mdp->rx_ring, mdp->rx_desc_dma);

skb_ring_free:
	/* Free Rx and Tx skb ring buffer */
	FUNC5(ndev);

	return ret;
}