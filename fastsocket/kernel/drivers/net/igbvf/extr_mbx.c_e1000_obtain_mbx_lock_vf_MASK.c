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
struct e1000_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_ERR_MBX ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int E1000_V2PMAILBOX_VFU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC3(struct e1000_hw *hw)
{
	s32 ret_val = -E1000_ERR_MBX;

	/* Take ownership of the buffer */
	FUNC2(FUNC0(0), E1000_V2PMAILBOX_VFU);

	/* reserve mailbox for vf use */
	if (FUNC1(hw) & E1000_V2PMAILBOX_VFU)
		ret_val = E1000_SUCCESS;

	return ret_val;
}