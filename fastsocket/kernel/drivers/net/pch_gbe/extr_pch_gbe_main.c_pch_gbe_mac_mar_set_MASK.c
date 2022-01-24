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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct pch_gbe_hw {TYPE_2__* reg; } ;
struct TYPE_4__ {int /*<<< orphan*/  ADDR_MASK; TYPE_1__* mac_adr; } ;
struct TYPE_3__ {int /*<<< orphan*/  low; int /*<<< orphan*/  high; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCH_GBE_BUSY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void FUNC4(struct pch_gbe_hw *hw, u8 * addr, u32 index)
{
	u32 mar_low, mar_high, adrmask;

	FUNC3("index : 0x%x\n", index);

	/*
	 * HW expects these in little endian so we reverse the byte order
	 * from network order (big endian) to little endian
	 */
	mar_high = ((u32) addr[0] | ((u32) addr[1] << 8) |
		   ((u32) addr[2] << 16) | ((u32) addr[3] << 24));
	mar_low = ((u32) addr[4] | ((u32) addr[5] << 8));
	/* Stop the MAC Address of index. */
	adrmask = FUNC0(&hw->reg->ADDR_MASK);
	FUNC1((adrmask | (0x0001 << index)), &hw->reg->ADDR_MASK);
	/* wait busy */
	FUNC2(&hw->reg->ADDR_MASK, PCH_GBE_BUSY);
	/* Set the MAC address to the MAC address 1A/1B register */
	FUNC1(mar_high, &hw->reg->mac_adr[index].high);
	FUNC1(mar_low, &hw->reg->mac_adr[index].low);
	/* Start the MAC address of index */
	FUNC1((adrmask & ~(0x0001 << index)), &hw->reg->ADDR_MASK);
	/* wait busy */
	FUNC2(&hw->reg->ADDR_MASK, PCH_GBE_BUSY);
}