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
typedef  union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
typedef  int u64 ;
typedef  size_t u32 ;
struct ixgbevf_ring {size_t reg_idx; int dma; int count; void* tail; void* head; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {size_t num_tx_queues; struct ixgbevf_ring* tx_ring; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t IXGBE_DCA_TXCTRL_TX_WB_RO_EN ; 
 size_t FUNC1 (struct ixgbe_hw*,void*) ; 
 void* FUNC2 (size_t) ; 
 void* FUNC3 (size_t) ; 
 void* FUNC4 (size_t) ; 
 void* FUNC5 (size_t) ; 
 void* FUNC6 (size_t) ; 
 void* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,void*,size_t) ; 

__attribute__((used)) static void FUNC9(struct ixgbevf_adapter *adapter)
{
	u64 tdba;
	struct ixgbe_hw *hw = &adapter->hw;
	u32 i, j, tdlen, txctrl;

	/* Setup the HW Tx Head and Tail descriptor pointers */
	for (i = 0; i < adapter->num_tx_queues; i++) {
		struct ixgbevf_ring *ring = &adapter->tx_ring[i];
		j = ring->reg_idx;
		tdba = ring->dma;
		tdlen = ring->count * sizeof(union ixgbe_adv_tx_desc);
		FUNC8(hw, FUNC4(j),
				(tdba & FUNC0(32)));
		FUNC8(hw, FUNC3(j), (tdba >> 32));
		FUNC8(hw, FUNC6(j), tdlen);
		FUNC8(hw, FUNC5(j), 0);
		FUNC8(hw, FUNC7(j), 0);
		adapter->tx_ring[i].head = FUNC5(j);
		adapter->tx_ring[i].tail = FUNC7(j);
		/* Disable Tx Head Writeback RO bit, since this hoses
		 * bookkeeping if things aren't delivered in order.
		 */
		txctrl = FUNC1(hw, FUNC2(j));
		txctrl &= ~IXGBE_DCA_TXCTRL_TX_WB_RO_EN;
		FUNC8(hw, FUNC2(j), txctrl);
	}
}