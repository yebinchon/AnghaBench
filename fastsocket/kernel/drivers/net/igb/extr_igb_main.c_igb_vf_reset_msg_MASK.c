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
typedef  size_t u32 ;
struct TYPE_3__ {size_t rar_entry_count; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {TYPE_2__* vf_data; struct e1000_hw hw; } ;
struct TYPE_4__ {unsigned char* vf_mac_addresses; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_VFRE ; 
 int /*<<< orphan*/  E1000_VFTE ; 
 size_t E1000_VF_RESET ; 
 size_t E1000_VT_MSGTYPE_ACK ; 
 int /*<<< orphan*/  IGB_VF_FLAG_CTS ; 
 int /*<<< orphan*/  FUNC0 (struct igb_adapter*,unsigned char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,size_t*,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC6(struct igb_adapter *adapter, u32 vf)
{
	struct e1000_hw *hw = &adapter->hw;
	unsigned char *vf_mac = adapter->vf_data[vf].vf_mac_addresses;
	int rar_entry = hw->mac.rar_entry_count - (vf + 1);
	u32 reg, msgbuf[3];
	u8 *addr = (u8 *)(&msgbuf[1]);

	/* process all the same items cleared in a function level reset */
	FUNC1(adapter, vf);

	/* set vf mac address */
	FUNC0(adapter, vf_mac, rar_entry, vf);

	/* enable transmit and receive for vf */
	reg = FUNC4(E1000_VFTE);
	FUNC5(E1000_VFTE, reg | (1 << vf));
	reg = FUNC4(E1000_VFRE);
	FUNC5(E1000_VFRE, reg | (1 << vf));

	adapter->vf_data[vf].flags |= IGB_VF_FLAG_CTS;

	/* reply to reset with ack and vf mac address */
	msgbuf[0] = E1000_VF_RESET | E1000_VT_MSGTYPE_ACK;
	FUNC3(addr, vf_mac, 6);
	FUNC2(hw, msgbuf, 3, vf);
}