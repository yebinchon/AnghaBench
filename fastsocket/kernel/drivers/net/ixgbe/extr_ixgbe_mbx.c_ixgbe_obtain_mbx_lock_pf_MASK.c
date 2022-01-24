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
typedef  int /*<<< orphan*/  u16 ;
struct ixgbe_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ IXGBE_ERR_MBX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IXGBE_PFMAILBOX_PFU ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC3(struct ixgbe_hw *hw, u16 vf_number)
{
	s32 ret_val = IXGBE_ERR_MBX;
	u32 p2v_mailbox;

	/* Take ownership of the buffer */
	FUNC2(hw, FUNC0(vf_number), IXGBE_PFMAILBOX_PFU);

	/* reserve mailbox for vf use */
	p2v_mailbox = FUNC1(hw, FUNC0(vf_number));
	if (p2v_mailbox & IXGBE_PFMAILBOX_PFU)
		ret_val = 0;

	return ret_val;
}