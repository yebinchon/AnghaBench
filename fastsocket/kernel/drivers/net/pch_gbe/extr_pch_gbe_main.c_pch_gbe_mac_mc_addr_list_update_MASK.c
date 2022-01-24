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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct pch_gbe_hw {TYPE_2__* reg; } ;
struct TYPE_4__ {TYPE_1__* mac_adr; int /*<<< orphan*/  ADDR_MASK; } ;
struct TYPE_3__ {int /*<<< orphan*/  low; int /*<<< orphan*/  high; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCH_GBE_BUSY ; 
 int /*<<< orphan*/  PCH_GBE_ETH_ALEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_gbe_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pch_gbe_hw *hw,
					    u8 *mc_addr_list, u32 mc_addr_count,
					    u32 mar_used_count, u32 mar_total_num)
{
	u32 i, adrmask;

	/* Load the first set of multicast addresses into the exact
	 * filters (RAR).  If there are not enough to fill the RAR
	 * array, clear the filters.
	 */
	for (i = mar_used_count; i < mar_total_num; i++) {
		if (mc_addr_count) {
			FUNC2(hw, mc_addr_list, i);
			mc_addr_count--;
			mc_addr_list += PCH_GBE_ETH_ALEN;
		} else {
			/* Clear MAC address mask */
			adrmask = FUNC0(&hw->reg->ADDR_MASK);
			FUNC1((adrmask | (0x0001 << i)),
					&hw->reg->ADDR_MASK);
			/* wait busy */
			FUNC3(&hw->reg->ADDR_MASK, PCH_GBE_BUSY);
			/* Clear MAC address */
			FUNC1(0, &hw->reg->mac_adr[i].high);
			FUNC1(0, &hw->reg->mac_adr[i].low);
		}
	}
}