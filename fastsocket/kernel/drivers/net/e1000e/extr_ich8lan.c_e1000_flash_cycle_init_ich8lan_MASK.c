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
struct TYPE_2__ {int flcerr; int dael; int flcdone; int /*<<< orphan*/  flcinprog; int /*<<< orphan*/  fldesvalid; } ;
union ich8_hws_flash_status {void* regval; TYPE_1__ hsf_status; } ;
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ E1000_ERR_NVM ; 
 int /*<<< orphan*/  ICH_FLASH_HSFSTS ; 
 scalar_t__ ICH_FLASH_READ_COMMAND_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static s32 FUNC4(struct e1000_hw *hw)
{
	union ich8_hws_flash_status hsfsts;
	s32 ret_val = -E1000_ERR_NVM;

	hsfsts.regval = FUNC1(ICH_FLASH_HSFSTS);

	/* Check if the flash descriptor is valid */
	if (!hsfsts.hsf_status.fldesvalid) {
		FUNC0("Flash descriptor invalid.  SW Sequencing must be used.\n");
		return -E1000_ERR_NVM;
	}

	/* Clear FCERR and DAEL in hw status by writing 1 */
	hsfsts.hsf_status.flcerr = 1;
	hsfsts.hsf_status.dael = 1;

	FUNC2(ICH_FLASH_HSFSTS, hsfsts.regval);

	/* Either we should have a hardware SPI cycle in progress
	 * bit to check against, in order to start a new cycle or
	 * FDONE bit should be changed in the hardware so that it
	 * is 1 after hardware reset, which can then be used as an
	 * indication whether a cycle is in progress or has been
	 * completed.
	 */

	if (!hsfsts.hsf_status.flcinprog) {
		/* There is no cycle running at present,
		 * so we can start a cycle.
		 * Begin by setting Flash Cycle Done.
		 */
		hsfsts.hsf_status.flcdone = 1;
		FUNC2(ICH_FLASH_HSFSTS, hsfsts.regval);
		ret_val = 0;
	} else {
		s32 i;

		/* Otherwise poll for sometime so the current
		 * cycle has a chance to end before giving up.
		 */
		for (i = 0; i < ICH_FLASH_READ_COMMAND_TIMEOUT; i++) {
			hsfsts.regval = FUNC1(ICH_FLASH_HSFSTS);
			if (!hsfsts.hsf_status.flcinprog) {
				ret_val = 0;
				break;
			}
			FUNC3(1);
		}
		if (!ret_val) {
			/* Successful in waiting for previous cycle to timeout,
			 * now set the Flash Cycle Done.
			 */
			hsfsts.hsf_status.flcdone = 1;
			FUNC2(ICH_FLASH_HSFSTS, hsfsts.regval);
		} else {
			FUNC0("Flash controller busy, cannot get access\n");
		}
	}

	return ret_val;
}