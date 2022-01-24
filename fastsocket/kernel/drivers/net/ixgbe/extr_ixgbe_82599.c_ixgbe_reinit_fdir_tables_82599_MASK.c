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
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_ERR_FDIR_REINIT_FAILED ; 
 int /*<<< orphan*/  IXGBE_FDIRCMD ; 
 int IXGBE_FDIRCMD_CLEARHT ; 
 int IXGBE_FDIRCMD_CMD_MASK ; 
 int IXGBE_FDIRCMD_CMD_POLL ; 
 int /*<<< orphan*/  IXGBE_FDIRCTRL ; 
 int IXGBE_FDIRCTRL_INIT_DONE ; 
 int /*<<< orphan*/  IXGBE_FDIRFREE ; 
 int /*<<< orphan*/  IXGBE_FDIRFSTAT ; 
 int /*<<< orphan*/  IXGBE_FDIRHASH ; 
 int /*<<< orphan*/  IXGBE_FDIRLEN ; 
 int /*<<< orphan*/  IXGBE_FDIRMATCH ; 
 int /*<<< orphan*/  IXGBE_FDIRMISS ; 
 int /*<<< orphan*/  IXGBE_FDIRUSTAT ; 
 int IXGBE_FDIR_INIT_DONE_POLL ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

s32 FUNC6(struct ixgbe_hw *hw)
{
	int i;
	u32 fdirctrl = FUNC0(hw, IXGBE_FDIRCTRL);
	fdirctrl &= ~IXGBE_FDIRCTRL_INIT_DONE;

	/*
	 * Before starting reinitialization process,
	 * FDIRCMD.CMD must be zero.
	 */
	for (i = 0; i < IXGBE_FDIRCMD_CMD_POLL; i++) {
		if (!(FUNC0(hw, IXGBE_FDIRCMD) &
		      IXGBE_FDIRCMD_CMD_MASK))
			break;
		FUNC4(10);
	}
	if (i >= IXGBE_FDIRCMD_CMD_POLL) {
		FUNC3(hw, "Flow Director previous command isn't complete, "
		       "aborting table re-initialization.\n");
		return IXGBE_ERR_FDIR_REINIT_FAILED;
	}

	FUNC2(hw, IXGBE_FDIRFREE, 0);
	FUNC1(hw);
	/*
	 * 82599 adapters flow director init flow cannot be restarted,
	 * Workaround 82599 silicon errata by performing the following steps
	 * before re-writing the FDIRCTRL control register with the same value.
	 * - write 1 to bit 8 of FDIRCMD register &
	 * - write 0 to bit 8 of FDIRCMD register
	 */
	FUNC2(hw, IXGBE_FDIRCMD,
	                (FUNC0(hw, IXGBE_FDIRCMD) |
	                 IXGBE_FDIRCMD_CLEARHT));
	FUNC1(hw);
	FUNC2(hw, IXGBE_FDIRCMD,
	                (FUNC0(hw, IXGBE_FDIRCMD) &
	                 ~IXGBE_FDIRCMD_CLEARHT));
	FUNC1(hw);
	/*
	 * Clear FDIR Hash register to clear any leftover hashes
	 * waiting to be programmed.
	 */
	FUNC2(hw, IXGBE_FDIRHASH, 0x00);
	FUNC1(hw);

	FUNC2(hw, IXGBE_FDIRCTRL, fdirctrl);
	FUNC1(hw);

	/* Poll init-done after we write FDIRCTRL register */
	for (i = 0; i < IXGBE_FDIR_INIT_DONE_POLL; i++) {
		if (FUNC0(hw, IXGBE_FDIRCTRL) &
		                   IXGBE_FDIRCTRL_INIT_DONE)
			break;
		FUNC5(1000, 2000);
	}
	if (i >= IXGBE_FDIR_INIT_DONE_POLL) {
		FUNC3(hw, "Flow Director Signature poll time exceeded!\n");
		return IXGBE_ERR_FDIR_REINIT_FAILED;
	}

	/* Clear FDIR statistics registers (read to clear) */
	FUNC0(hw, IXGBE_FDIRUSTAT);
	FUNC0(hw, IXGBE_FDIRFSTAT);
	FUNC0(hw, IXGBE_FDIRMATCH);
	FUNC0(hw, IXGBE_FDIRMISS);
	FUNC0(hw, IXGBE_FDIRLEN);

	return 0;
}