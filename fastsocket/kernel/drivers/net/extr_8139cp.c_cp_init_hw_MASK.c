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
struct net_device {scalar_t__ dev_addr; } ;
struct cp_private {int ring_dma; scalar_t__ wol_enabled; struct net_device* dev; } ;
struct cp_desc {int dummy; } ;
typedef  int dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int CP_RX_RING_SIZE ; 
 int /*<<< orphan*/  Cfg9346 ; 
 int /*<<< orphan*/  Cfg9346_Lock ; 
 int /*<<< orphan*/  Cfg9346_Unlock ; 
 int /*<<< orphan*/  Config1 ; 
 int /*<<< orphan*/  Config3 ; 
 int /*<<< orphan*/  Config5 ; 
 int DriverLoaded ; 
 scalar_t__ HiTxRingAddr ; 
 int IFG ; 
 scalar_t__ MAC0 ; 
 int /*<<< orphan*/  MultiIntr ; 
 int PARMEnable ; 
 int PMEStatus ; 
 int PMEnable ; 
 scalar_t__ RxRingAddr ; 
 int TX_DMA_BURST ; 
 scalar_t__ TxConfig ; 
 int TxDMAShift ; 
 scalar_t__ TxRingAddr ; 
 int /*<<< orphan*/  TxThresh ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct cp_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct cp_private*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9 (struct cp_private *cp)
{
	struct net_device *dev = cp->dev;
	dma_addr_t ring_dma;

	FUNC1(cp);

	FUNC7 (Cfg9346, Cfg9346_Unlock);

	/* Restore our idea of the MAC address. */
	FUNC5 (MAC0 + 0, FUNC8 (*(__le32 *) (dev->dev_addr + 0)));
	FUNC5 (MAC0 + 4, FUNC8 (*(__le32 *) (dev->dev_addr + 4)));

	FUNC2(cp);
	FUNC6(TxThresh, 0x06); /* XXX convert magic num to a constant */

	FUNC0(dev);
	FUNC5 (TxConfig, IFG | (TX_DMA_BURST << TxDMAShift));

	FUNC6(Config1, FUNC3(Config1) | DriverLoaded | PMEnable);
	/* Disable Wake-on-LAN. Can be turned on with ETHTOOL_SWOL */
	FUNC6(Config3, PARMEnable);
	cp->wol_enabled = 0;

	FUNC6(Config5, FUNC3(Config5) & PMEStatus);

	FUNC5(HiTxRingAddr, 0);
	FUNC5(HiTxRingAddr + 4, 0);

	ring_dma = cp->ring_dma;
	FUNC5(RxRingAddr, ring_dma & 0xffffffff);
	FUNC5(RxRingAddr + 4, (ring_dma >> 16) >> 16);

	ring_dma += sizeof(struct cp_desc) * CP_RX_RING_SIZE;
	FUNC5(TxRingAddr, ring_dma & 0xffffffff);
	FUNC5(TxRingAddr + 4, (ring_dma >> 16) >> 16);

	FUNC4(MultiIntr, 0);

	FUNC7(Cfg9346, Cfg9346_Lock);
}