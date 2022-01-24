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
struct net_device {int dummy; } ;
struct fec_enet_private {int bd_dma; int full_duplex; int phy_speed; scalar_t__ hwp; struct bufdesc* tx_bd_base; struct bufdesc* rx_bd_base; int /*<<< orphan*/ ** tx_skbuff; scalar_t__ skb_dirty; scalar_t__ skb_cur; struct bufdesc* cur_rx; struct bufdesc* cur_tx; struct bufdesc* dirty_tx; } ;
struct bufdesc {int /*<<< orphan*/  cbd_sc; scalar_t__ cbd_bufaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ENET_RX_EMPTY ; 
 int /*<<< orphan*/  BD_SC_WRAP ; 
 scalar_t__ FEC_ECNTRL ; 
 int FEC_ENET_MII ; 
 int FEC_ENET_RXF ; 
 int FEC_ENET_TXF ; 
 scalar_t__ FEC_GRP_HASH_TABLE_HIGH ; 
 scalar_t__ FEC_GRP_HASH_TABLE_LOW ; 
 scalar_t__ FEC_HASH_TABLE_HIGH ; 
 scalar_t__ FEC_HASH_TABLE_LOW ; 
 scalar_t__ FEC_IEVENT ; 
 scalar_t__ FEC_IMASK ; 
 scalar_t__ FEC_MII_SPEED ; 
 scalar_t__ FEC_R_BUFF_SIZE ; 
 scalar_t__ FEC_R_CNTRL ; 
 scalar_t__ FEC_R_DES_ACTIVE ; 
 scalar_t__ FEC_R_DES_START ; 
 scalar_t__ FEC_X_CNTRL ; 
 scalar_t__ FEC_X_DES_START ; 
 int OPT_FRAME_SIZE ; 
 int PKT_MAXBLR_SIZE ; 
 int RX_RING_SIZE ; 
 int TX_RING_MOD_MASK ; 
 int TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fec_enet_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct net_device *dev, int duplex)
{
	struct fec_enet_private *fep = FUNC1(dev);
	struct bufdesc *bdp;
	int i;

	/* Whack a reset.  We should wait for this. */
	FUNC3(1, fep->hwp + FEC_ECNTRL);
	FUNC2(10);

	/* Clear any outstanding interrupt. */
	FUNC3(0xffc00000, fep->hwp + FEC_IEVENT);

	/* Reset all multicast.	*/
	FUNC3(0, fep->hwp + FEC_GRP_HASH_TABLE_HIGH);
	FUNC3(0, fep->hwp + FEC_GRP_HASH_TABLE_LOW);
#ifndef CONFIG_M5272
	FUNC3(0, fep->hwp + FEC_HASH_TABLE_HIGH);
	FUNC3(0, fep->hwp + FEC_HASH_TABLE_LOW);
#endif

	/* Set maximum receive buffer size. */
	FUNC3(PKT_MAXBLR_SIZE, fep->hwp + FEC_R_BUFF_SIZE);

	/* Set receive and transmit descriptor base. */
	FUNC3(fep->bd_dma, fep->hwp + FEC_R_DES_START);
	FUNC3((unsigned long)fep->bd_dma + sizeof(struct bufdesc) * RX_RING_SIZE,
			fep->hwp + FEC_X_DES_START);

	fep->dirty_tx = fep->cur_tx = fep->tx_bd_base;
	fep->cur_rx = fep->rx_bd_base;

	/* Reset SKB transmit buffers. */
	fep->skb_cur = fep->skb_dirty = 0;
	for (i = 0; i <= TX_RING_MOD_MASK; i++) {
		if (fep->tx_skbuff[i]) {
			FUNC0(fep->tx_skbuff[i]);
			fep->tx_skbuff[i] = NULL;
		}
	}

	/* Initialize the receive buffer descriptors. */
	bdp = fep->rx_bd_base;
	for (i = 0; i < RX_RING_SIZE; i++) {

		/* Initialize the BD for every fragment in the page. */
		bdp->cbd_sc = BD_ENET_RX_EMPTY;
		bdp++;
	}

	/* Set the last buffer to wrap */
	bdp--;
	bdp->cbd_sc |= BD_SC_WRAP;

	/* ...and the same for transmit */
	bdp = fep->tx_bd_base;
	for (i = 0; i < TX_RING_SIZE; i++) {

		/* Initialize the BD for every fragment in the page. */
		bdp->cbd_sc = 0;
		bdp->cbd_bufaddr = 0;
		bdp++;
	}

	/* Set the last buffer to wrap */
	bdp--;
	bdp->cbd_sc |= BD_SC_WRAP;

	/* Enable MII mode */
	if (duplex) {
		/* MII enable / FD enable */
		FUNC3(OPT_FRAME_SIZE | 0x04, fep->hwp + FEC_R_CNTRL);
		FUNC3(0x04, fep->hwp + FEC_X_CNTRL);
	} else {
		/* MII enable / No Rcv on Xmit */
		FUNC3(OPT_FRAME_SIZE | 0x06, fep->hwp + FEC_R_CNTRL);
		FUNC3(0x0, fep->hwp + FEC_X_CNTRL);
	}
	fep->full_duplex = duplex;

	/* Set MII speed */
	FUNC3(fep->phy_speed, fep->hwp + FEC_MII_SPEED);

	/* And last, enable the transmit and receive processing */
	FUNC3(2, fep->hwp + FEC_ECNTRL);
	FUNC3(0, fep->hwp + FEC_R_DES_ACTIVE);

	/* Enable interrupts we wish to service */
	FUNC3(FEC_ENET_TXF | FEC_ENET_RXF | FEC_ENET_MII,
			fep->hwp + FEC_IMASK);
}