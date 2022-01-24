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
 int E1000_SWSM_SMBI ; 
 int E1000_SWSM_SWESMBI ; 
 int /*<<< orphan*/  SWSM ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

s32 FUNC5(struct e1000_hw *hw)
{
	u32 swsm;
	s32 timeout = hw->nvm.word_size + 1;
	s32 i = 0;

	/* Get the SW semaphore */
	while (i < timeout) {
		swsm = FUNC2(SWSM);
		if (!(swsm & E1000_SWSM_SMBI))
			break;

		FUNC4(50, 100);
		i++;
	}

	if (i == timeout) {
		FUNC1("Driver can't access device - SMBI bit is set.\n");
		return -E1000_ERR_NVM;
	}

	/* Get the FW semaphore. */
	for (i = 0; i < timeout; i++) {
		swsm = FUNC2(SWSM);
		FUNC3(SWSM, swsm | E1000_SWSM_SWESMBI);

		/* Semaphore acquired if bit latched */
		if (FUNC2(SWSM) & E1000_SWSM_SWESMBI)
			break;

		FUNC4(50, 100);
	}

	if (i == timeout) {
		/* Release semaphores */
		FUNC0(hw);
		FUNC1("Driver can't access the NVM\n");
		return -E1000_ERR_NVM;
	}

	return 0;
}