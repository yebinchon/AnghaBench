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
typedef  scalar_t__ u32 ;
struct sh_eth_txdesc {int dummy; } ;
struct sh_eth_rxdesc {int dummy; } ;
struct sh_eth_private {int /*<<< orphan*/  tx_desc_dma; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  rx_desc_dma; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  timer; scalar_t__ phydev; } ;
struct net_device {int /*<<< orphan*/  irq; scalar_t__ base_addr; } ;

/* Variables and functions */
 scalar_t__ EDRRR ; 
 scalar_t__ EDTRR ; 
 scalar_t__ EESIPR ; 
 int RX_RING_SIZE ; 
 int TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct sh_eth_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC4(ndev);
	u32 ioaddr = ndev->base_addr;
	int ringsize;

	FUNC5(ndev);

	/* Disable interrupts by clearing the interrupt mask. */
	FUNC0(0x0000, ioaddr + EESIPR);

	/* Stop the chip's Tx and Rx processes. */
	FUNC0(0, ioaddr + EDTRR);
	FUNC0(0, ioaddr + EDRRR);

	/* PHY Disconnect */
	if (mdp->phydev) {
		FUNC7(mdp->phydev);
		FUNC6(mdp->phydev);
	}

	FUNC3(ndev->irq, ndev);

	FUNC1(&mdp->timer);

	/* Free all the skbuffs in the Rx queue. */
	FUNC8(ndev);

	/* free DMA buffer */
	ringsize = sizeof(struct sh_eth_rxdesc) * RX_RING_SIZE;
	FUNC2(NULL, ringsize, mdp->rx_ring, mdp->rx_desc_dma);

	/* free DMA buffer */
	ringsize = sizeof(struct sh_eth_txdesc) * TX_RING_SIZE;
	FUNC2(NULL, ringsize, mdp->tx_ring, mdp->tx_desc_dma);

	return 0;
}