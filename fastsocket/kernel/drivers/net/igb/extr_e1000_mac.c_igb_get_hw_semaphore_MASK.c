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
struct TYPE_2__ {scalar_t__ word_size; } ;
struct e1000_hw {TYPE_1__ nvm; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ E1000_ERR_NVM ; 
 int /*<<< orphan*/  E1000_SWSM ; 
 int E1000_SWSM_SMBI ; 
 int E1000_SWSM_SWESMBI ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

s32 FUNC5(struct e1000_hw *hw)
{
	u32 swsm;
	s32 ret_val = 0;
	s32 timeout = hw->nvm.word_size + 1;
	s32 i = 0;

	/* Get the SW semaphore */
	while (i < timeout) {
		swsm = FUNC2(E1000_SWSM);
		if (!(swsm & E1000_SWSM_SMBI))
			break;

		FUNC3(50);
		i++;
	}

	if (i == timeout) {
		FUNC0("Driver can't access device - SMBI bit is set.\n");
		ret_val = -E1000_ERR_NVM;
		goto out;
	}

	/* Get the FW semaphore. */
	for (i = 0; i < timeout; i++) {
		swsm = FUNC2(E1000_SWSM);
		FUNC4(E1000_SWSM, swsm | E1000_SWSM_SWESMBI);

		/* Semaphore acquired if bit latched */
		if (FUNC2(E1000_SWSM) & E1000_SWSM_SWESMBI)
			break;

		FUNC3(50);
	}

	if (i == timeout) {
		/* Release semaphores */
		FUNC1(hw);
		FUNC0("Driver can't access the NVM\n");
		ret_val = -E1000_ERR_NVM;
		goto out;
	}

out:
	return ret_val;
}