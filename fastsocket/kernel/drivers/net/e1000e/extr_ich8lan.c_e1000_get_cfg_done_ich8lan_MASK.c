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
typedef  int u32 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ phy; TYPE_2__ mac; } ;
typedef  int s32 ;

/* Variables and functions */
 int E1000_EECD_PRES ; 
 int E1000_ERR_CONFIG ; 
 int E1000_STATUS_PHYRA ; 
 int /*<<< orphan*/  EECD ; 
 int /*<<< orphan*/  STATUS ; 
 scalar_t__ e1000_ich10lan ; 
 scalar_t__ e1000_ich9lan ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 scalar_t__ e1000_phy_igp_3 ; 
 scalar_t__ FUNC1 (struct e1000_hw*,int*) ; 
 int FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC8(struct e1000_hw *hw)
{
	s32 ret_val = 0;
	u32 bank = 0;
	u32 status;

	FUNC3(hw);

	/* Wait for indication from h/w that it has completed basic config */
	if (hw->mac.type >= e1000_ich10lan) {
		FUNC0(hw);
	} else {
		ret_val = FUNC2(hw);
		if (ret_val) {
			/* When auto config read does not complete, do not
			 * return with an error. This can happen in situations
			 * where there is no eeprom and prevents getting link.
			 */
			FUNC5("Auto Read Done did not complete\n");
			ret_val = 0;
		}
	}

	/* Clear PHY Reset Asserted bit */
	status = FUNC6(STATUS);
	if (status & E1000_STATUS_PHYRA)
		FUNC7(STATUS, status & ~E1000_STATUS_PHYRA);
	else
		FUNC5("PHY Reset Asserted not set - needs delay\n");

	/* If EEPROM is not marked present, init the IGP 3 PHY manually */
	if (hw->mac.type <= e1000_ich9lan) {
		if (!(FUNC6(EECD) & E1000_EECD_PRES) &&
		    (hw->phy.type == e1000_phy_igp_3)) {
			FUNC4(hw);
		}
	} else {
		if (FUNC1(hw, &bank)) {
			/* Maybe we should do a basic PHY config */
			FUNC5("EEPROM not present\n");
			ret_val = -E1000_ERR_CONFIG;
		}
	}

	return ret_val;
}