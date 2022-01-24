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
typedef  unsigned long long u32 ;
struct pch_gbe_hw {TYPE_2__* reg; } ;
struct pch_gbe_adapter {TYPE_1__* rx_ring; struct pch_gbe_hw hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  RX_DSC_SW_P; int /*<<< orphan*/  RX_DSC_SIZE; int /*<<< orphan*/  RX_DSC_BASE; int /*<<< orphan*/  DMA_CTRL; int /*<<< orphan*/  MAC_RX_EN; } ;
struct TYPE_3__ {unsigned long long dma; unsigned long long size; } ;

/* Variables and functions */
 unsigned long long PCH_GBE_RX_DMA_EN ; 
 unsigned long long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long long,unsigned long long) ; 

__attribute__((used)) static void FUNC5(struct pch_gbe_adapter *adapter)
{
	struct pch_gbe_hw *hw = &adapter->hw;
	u32 rdba, rdlen, rxdma;

	FUNC4("dma adr = 0x%08llx  size = 0x%08x\n",
		 (unsigned long long)adapter->rx_ring->dma,
		 adapter->rx_ring->size);

	FUNC3(hw);

	FUNC2(hw);

	/* Disables Receive DMA */
	rxdma = FUNC0(&hw->reg->DMA_CTRL);
	rxdma &= ~PCH_GBE_RX_DMA_EN;
	FUNC1(rxdma, &hw->reg->DMA_CTRL);

	FUNC4("MAC_RX_EN reg = 0x%08x  DMA_CTRL reg = 0x%08x\n",
		 FUNC0(&hw->reg->MAC_RX_EN),
		 FUNC0(&hw->reg->DMA_CTRL));

	/* Setup the HW Rx Head and Tail Descriptor Pointers and
	 * the Base and Length of the Rx Descriptor Ring */
	rdba = adapter->rx_ring->dma;
	rdlen = adapter->rx_ring->size - 0x10;
	FUNC1(rdba, &hw->reg->RX_DSC_BASE);
	FUNC1(rdlen, &hw->reg->RX_DSC_SIZE);
	FUNC1((rdba + rdlen), &hw->reg->RX_DSC_SW_P);
}