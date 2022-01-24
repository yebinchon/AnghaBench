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
struct netdrv_private {int /*<<< orphan*/ * tx_bufs; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/  tx_bufs_dma; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  rx_ring_dma; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; void* mmio_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_missed_errors; } ;
struct net_device {int /*<<< orphan*/  irq; TYPE_1__ stats; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  Cfg9346 ; 
 int Cfg9346_Lock ; 
 int Cfg9346_Unlock ; 
 int /*<<< orphan*/  ChipCmd ; 
 int ChipCmdClear ; 
 int /*<<< orphan*/  Config1 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IntrMask ; 
 int /*<<< orphan*/  IntrStatus ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RX_BUF_TOT_LEN ; 
 int /*<<< orphan*/  RxMissed ; 
 int /*<<< orphan*/  TX_BUF_TOT_LEN ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct netdrv_private* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC15 (struct net_device *dev)
{
	struct netdrv_private *tp = FUNC9(dev);
	void *ioaddr = tp->mmio_addr;
	unsigned long flags;

	FUNC0 ("ENTER\n");

	FUNC11 (dev);

	FUNC0 ("%s: Shutting down ethercard, status was 0x%4.4x.\n",
			dev->name, FUNC1 (IntrStatus));

	FUNC7 (&tp->timer);

	FUNC13 (&tp->lock, flags);

	/* Stop the chip's Tx and Rx DMA processes. */
	FUNC6 (ChipCmd, (FUNC3 (ChipCmd) & ChipCmdClear));

	/* Disable interrupts by clearing the interrupt mask. */
	FUNC4 (IntrMask, 0x0000);

	/* Update the error counts. */
	dev->stats.rx_missed_errors += FUNC2 (RxMissed);
	FUNC5 (RxMissed, 0);

	FUNC14 (&tp->lock, flags);

	FUNC8 (dev->irq, dev);

	FUNC10 (dev);

	FUNC12(tp->pci_dev, RX_BUF_TOT_LEN,
			    tp->rx_ring, tp->rx_ring_dma);
	FUNC12(tp->pci_dev, TX_BUF_TOT_LEN,
			    tp->tx_bufs, tp->tx_bufs_dma);
	tp->rx_ring = NULL;
	tp->tx_bufs = NULL;

	/* Green! Put the chip in low-power mode. */
	FUNC6 (Cfg9346, Cfg9346_Unlock);
	FUNC6 (Config1, 0x03);
	FUNC6 (Cfg9346, Cfg9346_Lock);

	FUNC0 ("EXIT\n");
	return 0;
}