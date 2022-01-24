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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_EEC ; 
 scalar_t__ IXGBE_EEC_CS ; 
 scalar_t__ IXGBE_EEC_GNT ; 
 scalar_t__ IXGBE_EEC_REQ ; 
 scalar_t__ IXGBE_EEC_SK ; 
 scalar_t__ IXGBE_EEPROM_GRANT_ATTEMPTS ; 
 scalar_t__ IXGBE_ERR_EEPROM ; 
 scalar_t__ IXGBE_ERR_SWFW_SYNC ; 
 int /*<<< orphan*/  IXGBE_GSSR_EEP_SM ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,char*) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static s32 FUNC7(struct ixgbe_hw *hw)
{
	s32 status = 0;
	u32 eec;
	u32 i;

	if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM) != 0)
		status = IXGBE_ERR_SWFW_SYNC;

	if (status == 0) {
		eec = FUNC0(hw, IXGBE_EEC);

		/* Request EEPROM Access */
		eec |= IXGBE_EEC_REQ;
		FUNC2(hw, IXGBE_EEC, eec);

		for (i = 0; i < IXGBE_EEPROM_GRANT_ATTEMPTS; i++) {
			eec = FUNC0(hw, IXGBE_EEC);
			if (eec & IXGBE_EEC_GNT)
				break;
			FUNC6(5);
		}

		/* Release if grant not acquired */
		if (!(eec & IXGBE_EEC_GNT)) {
			eec &= ~IXGBE_EEC_REQ;
			FUNC2(hw, IXGBE_EEC, eec);
			FUNC3(hw, "Could not acquire EEPROM grant\n");

			hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_EEP_SM);
			status = IXGBE_ERR_EEPROM;
		}

		/* Setup EEPROM for Read/Write */
		if (status == 0) {
			/* Clear CS and SK */
			eec &= ~(IXGBE_EEC_CS | IXGBE_EEC_SK);
			FUNC2(hw, IXGBE_EEC, eec);
			FUNC1(hw);
			FUNC6(1);
		}
	}
	return status;
}