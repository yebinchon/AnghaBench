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
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_EECD ; 
 int E1000_EECD_GNT ; 
 int E1000_EECD_REQ ; 
 scalar_t__ E1000_ERR_NVM ; 
 scalar_t__ E1000_NVM_GRANT_ATTEMPTS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

s32 FUNC4(struct e1000_hw *hw)
{
	u32 eecd = FUNC1(E1000_EECD);
	s32 timeout = E1000_NVM_GRANT_ATTEMPTS;
	s32 ret_val = 0;


	FUNC3(E1000_EECD, eecd | E1000_EECD_REQ);
	eecd = FUNC1(E1000_EECD);

	while (timeout) {
		if (eecd & E1000_EECD_GNT)
			break;
		FUNC2(5);
		eecd = FUNC1(E1000_EECD);
		timeout--;
	}

	if (!timeout) {
		eecd &= ~E1000_EECD_REQ;
		FUNC3(E1000_EECD, eecd);
		FUNC0("Could not acquire NVM grant\n");
		ret_val = -E1000_ERR_NVM;
	}

	return ret_val;
}