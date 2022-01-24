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
typedef  union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
typedef  int u64 ;
typedef  int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {int num_rx_queues; TYPE_1__* rx_ring; struct ixgbe_hw hw; } ;
struct TYPE_2__ {int count; int dma; int reg_idx; void* tail; void* head; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 void* IXGBE_VFPSRTYPE ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbevf_adapter*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbevf_adapter*) ; 

__attribute__((used)) static void FUNC9(struct ixgbevf_adapter *adapter)
{
	u64 rdba;
	struct ixgbe_hw *hw = &adapter->hw;
	int i, j;
	u32 rdlen;

	/* PSRTYPE must be initialized in 82599 */
	FUNC6(hw, IXGBE_VFPSRTYPE, 0);

	/* set_rx_buffer_len must be called before ring initialization */
	FUNC8(adapter);

	rdlen = adapter->rx_ring[0].count * sizeof(union ixgbe_adv_rx_desc);
	/* Setup the HW Rx Head and Tail Descriptor Pointers and
	 * the Base and Length of the Rx Descriptor Ring */
	for (i = 0; i < adapter->num_rx_queues; i++) {
		rdba = adapter->rx_ring[i].dma;
		j = adapter->rx_ring[i].reg_idx;
		FUNC6(hw, FUNC2(j),
				(rdba & FUNC0(32)));
		FUNC6(hw, FUNC1(j), (rdba >> 32));
		FUNC6(hw, FUNC4(j), rdlen);
		FUNC6(hw, FUNC3(j), 0);
		FUNC6(hw, FUNC5(j), 0);
		adapter->rx_ring[i].head = FUNC3(j);
		adapter->rx_ring[i].tail = FUNC5(j);

		FUNC7(adapter, j);
	}
}