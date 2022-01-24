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
typedef  int u32 ;
struct netdrv_private {size_t chipset; int rx_ring_dma; int tx_bufs_dma; int* tx_buf; int tx_bufs; scalar_t__ cur_rx; void* mmio_addr; } ;
struct net_device {scalar_t__ dev_addr; } ;
struct TYPE_2__ {int RxConfigMask; } ;

/* Variables and functions */
 int /*<<< orphan*/  Cfg9346 ; 
 int Cfg9346_Lock ; 
 int Cfg9346_Unlock ; 
 int /*<<< orphan*/  ChipCmd ; 
 int ChipCmdClear ; 
 int CmdReset ; 
 int CmdRxEnb ; 
 int CmdTxEnb ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IntrMask ; 
 scalar_t__ MAC0 ; 
 int /*<<< orphan*/  MultiIntr ; 
 int MultiIntrClear ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int NUM_TX_DESC ; 
 scalar_t__ RxBuf ; 
 scalar_t__ RxConfig ; 
 scalar_t__ RxMissed ; 
 int TX_DMA_BURST ; 
 scalar_t__ TxAddr0 ; 
 int /*<<< orphan*/  TxConfig ; 
 int TxDMAShift ; 
 int FUNC10 (int) ; 
 struct netdrv_private* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  netdrv_intr_mask ; 
 int netdrv_rx_config ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 TYPE_1__* rtl_chip_info ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static void FUNC15 (struct net_device *dev)
{
	struct netdrv_private *tp = FUNC11(dev);
	void *ioaddr = tp->mmio_addr;
	u32 i;

	FUNC0 ("ENTER\n");

	/* Soft reset the chip. */
	FUNC8 (ChipCmd, (FUNC3 (ChipCmd) & ChipCmdClear) | CmdReset);
	FUNC14 (100);

	/* Check that the chip has finished the reset. */
	for (i = 1000; i > 0; i--)
		if ((FUNC3 (ChipCmd) & CmdReset) == 0)
			break;

	/* Restore our idea of the MAC address. */
	FUNC7 (MAC0 + 0, FUNC10 (*(u32 *) (dev->dev_addr + 0)));
	FUNC7 (MAC0 + 4, FUNC10 (*(u32 *) (dev->dev_addr + 4)));

	/* Must enable Tx/Rx before setting transfer thresholds! */
	FUNC9 (ChipCmd, (FUNC3 (ChipCmd) & ChipCmdClear) |
			   CmdRxEnb | CmdTxEnb);

	i = netdrv_rx_config |
	    (FUNC2 (RxConfig) & rtl_chip_info[tp->chipset].RxConfigMask);
	FUNC7 (RxConfig, i);

	/* Check this value: the documentation for IFG contradicts ifself. */
	FUNC6 (TxConfig, (TX_DMA_BURST << TxDMAShift));

	/* unlock Config[01234] and BMCR register writes */
	FUNC9 (Cfg9346, Cfg9346_Unlock);
	FUNC14 (10);

	tp->cur_rx = 0;

	/* Lock Config[01234] and BMCR register writes */
	FUNC9 (Cfg9346, Cfg9346_Lock);
	FUNC14 (10);

	/* init Rx ring buffer DMA address */
	FUNC7 (RxBuf, tp->rx_ring_dma);

	/* init Tx buffer DMA addresses */
	for (i = 0; i < NUM_TX_DESC; i++)
		FUNC7 (TxAddr0 + (i * 4), tp->tx_bufs_dma + (tp->tx_buf[i] - tp->tx_bufs));

	FUNC7 (RxMissed, 0);

	FUNC12 (dev);

	/* no early-rx interrupts */
	FUNC4 (MultiIntr, FUNC1 (MultiIntr) & MultiIntrClear);

	/* make sure RxTx has started */
	FUNC9 (ChipCmd, (FUNC3 (ChipCmd) & ChipCmdClear) |
			   CmdRxEnb | CmdTxEnb);

	/* Enable all known interrupts by setting the interrupt mask. */
	FUNC5 (IntrMask, netdrv_intr_mask);

	FUNC13 (dev);

	FUNC0 ("EXIT\n");
}