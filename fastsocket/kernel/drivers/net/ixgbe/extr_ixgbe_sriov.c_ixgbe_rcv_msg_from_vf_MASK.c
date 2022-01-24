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
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {TYPE_1__* vfinfo; struct ixgbe_hw hw; } ;
typedef  int s32 ;
struct TYPE_2__ {int /*<<< orphan*/  clear_to_send; } ;

/* Variables and functions */
 int IXGBE_ERR_MBX ; 
 int IXGBE_VFMAILBOX_SIZE ; 
#define  IXGBE_VF_API_NEGOTIATE 134 
#define  IXGBE_VF_GET_QUEUES 133 
 int IXGBE_VF_RESET ; 
#define  IXGBE_VF_SET_LPE 132 
#define  IXGBE_VF_SET_MACVLAN 131 
#define  IXGBE_VF_SET_MAC_ADDR 130 
#define  IXGBE_VF_SET_MULTICAST 129 
#define  IXGBE_VF_SET_VLAN 128 
 int IXGBE_VT_MSGTYPE_ACK ; 
 int IXGBE_VT_MSGTYPE_CTS ; 
 int IXGBE_VT_MSGTYPE_NACK ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC3 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC4 (struct ixgbe_hw*,int*,int,int) ; 
 int FUNC5 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC6 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC7 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC8 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC9 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC10 (struct ixgbe_adapter*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_hw*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(struct ixgbe_adapter *adapter, u32 vf)
{
	u32 mbx_size = IXGBE_VFMAILBOX_SIZE;
	u32 msgbuf[IXGBE_VFMAILBOX_SIZE];
	struct ixgbe_hw *hw = &adapter->hw;
	s32 retval;

	retval = FUNC4(hw, msgbuf, mbx_size, vf);

	if (retval) {
		FUNC12("Error receiving message from VF\n");
		return retval;
	}

	/* this is a message we already processed, do nothing */
	if (msgbuf[0] & (IXGBE_VT_MSGTYPE_ACK | IXGBE_VT_MSGTYPE_NACK))
		return retval;

	/* flush the ack before we write any messages back */
	FUNC0(hw);

	if (msgbuf[0] == IXGBE_VF_RESET)
		return FUNC10(adapter, vf);

	/*
	 * until the vf completes a virtual function reset it should not be
	 * allowed to start any configuration.
	 */
	if (!adapter->vfinfo[vf].clear_to_send) {
		msgbuf[0] |= IXGBE_VT_MSGTYPE_NACK;
		FUNC11(hw, msgbuf, 1, vf);
		return retval;
	}

	switch ((msgbuf[0] & 0xFFFF)) {
	case IXGBE_VF_SET_MAC_ADDR:
		retval = FUNC6(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_SET_MULTICAST:
		retval = FUNC8(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_SET_VLAN:
		retval = FUNC9(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_SET_LPE:
		retval = FUNC5(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_SET_MACVLAN:
		retval = FUNC7(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_API_NEGOTIATE:
		retval = FUNC3(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_GET_QUEUES:
		retval = FUNC2(adapter, msgbuf, vf);
		break;
	default:
		FUNC1(drv, "Unhandled Msg %8.8x\n", msgbuf[0]);
		retval = IXGBE_ERR_MBX;
		break;
	}

	/* notify the VF of the results of what it sent us */
	if (retval)
		msgbuf[0] |= IXGBE_VT_MSGTYPE_NACK;
	else
		msgbuf[0] |= IXGBE_VT_MSGTYPE_ACK;

	msgbuf[0] |= IXGBE_VT_MSGTYPE_CTS;

	FUNC11(hw, msgbuf, mbx_size, vf);

	return retval;
}