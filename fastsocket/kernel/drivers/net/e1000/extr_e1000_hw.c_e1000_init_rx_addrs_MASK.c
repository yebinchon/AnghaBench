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
typedef  int u32 ;
struct e1000_hw {int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int E1000_RAR_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RA ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct e1000_hw *hw)
{
	u32 i;
	u32 rar_num;

	FUNC3("e1000_init_rx_addrs");

	/* Setup the receive address. */
	FUNC3("Programming MAC Address into RAR[0]\n");

	FUNC2(hw, hw->mac_addr, 0);

	rar_num = E1000_RAR_ENTRIES;

	/* Zero out the other 15 receive addresses. */
	FUNC3("Clearing RAR[1-15]\n");
	for (i = 1; i < rar_num; i++) {
		FUNC1(hw, RA, (i << 1), 0);
		FUNC0();
		FUNC1(hw, RA, ((i << 1) + 1), 0);
		FUNC0();
	}
}