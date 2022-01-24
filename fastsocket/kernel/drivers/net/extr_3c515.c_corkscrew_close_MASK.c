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
struct net_device {int base_addr; scalar_t__ if_port; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct corkscrew_private {int /*<<< orphan*/ ** tx_skbuff; scalar_t__ full_bus_master_tx; int /*<<< orphan*/ ** rx_skbuff; scalar_t__ full_bus_master_rx; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 scalar_t__ DownListPtr ; 
 scalar_t__ EL3_CMD ; 
 scalar_t__ EL3_STATUS ; 
 int RX_RING_SIZE ; 
 int RxDisable ; 
 int SetIntrEnb ; 
 int StatsDisable ; 
 int StopCoax ; 
 int TX_RING_SIZE ; 
 int TxDisable ; 
 scalar_t__ TxStatus ; 
 scalar_t__ UpListPtr ; 
 scalar_t__ XCVR_10base2 ; 
 int corkscrew_debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct corkscrew_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  queued_packet ; 
 int /*<<< orphan*/  rx_copy ; 
 int /*<<< orphan*/  rx_nocopy ; 
 int /*<<< orphan*/  FUNC10 (int,struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct corkscrew_private *vp = FUNC5(dev);
	int ioaddr = dev->base_addr;
	int i;

	FUNC6(dev);

	if (corkscrew_debug > 1) {
		FUNC9("%s: corkscrew_close() status %4.4x, Tx status %2.2x.\n",
		     dev->name, FUNC4(ioaddr + EL3_STATUS),
		     FUNC3(ioaddr + TxStatus));
		FUNC9("%s: corkscrew close stats: rx_nocopy %d rx_copy %d tx_queued %d.\n",
			dev->name, rx_nocopy, rx_copy, queued_packet);
	}

	FUNC0(&vp->timer);

	/* Turn off statistics ASAP.  We update lp->stats below. */
	FUNC8(StatsDisable, ioaddr + EL3_CMD);

	/* Disable the receiver and transmitter. */
	FUNC8(RxDisable, ioaddr + EL3_CMD);
	FUNC8(TxDisable, ioaddr + EL3_CMD);

	if (dev->if_port == XCVR_10base2)
		/* Turn off thinnet power.  Green! */
		FUNC8(StopCoax, ioaddr + EL3_CMD);

	FUNC2(dev->irq, dev);

	FUNC8(SetIntrEnb | 0x0000, ioaddr + EL3_CMD);

	FUNC10(ioaddr, dev);
	if (vp->full_bus_master_rx) {	/* Free Boomerang bus master Rx buffers. */
		FUNC7(0, ioaddr + UpListPtr);
		for (i = 0; i < RX_RING_SIZE; i++)
			if (vp->rx_skbuff[i]) {
				FUNC1(vp->rx_skbuff[i]);
				vp->rx_skbuff[i] = NULL;
			}
	}
	if (vp->full_bus_master_tx) {	/* Free Boomerang bus master Tx buffers. */
		FUNC7(0, ioaddr + DownListPtr);
		for (i = 0; i < TX_RING_SIZE; i++)
			if (vp->tx_skbuff[i]) {
				FUNC1(vp->tx_skbuff[i]);
				vp->tx_skbuff[i] = NULL;
			}
	}

	return 0;
}