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
typedef  int u16 ;
struct hermes {int inten; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int CMD_BUSY_TIMEOUT ; 
 int ENODEV ; 
 int /*<<< orphan*/  EVACK ; 
 int /*<<< orphan*/  EVSTAT ; 
 int HERMES_CMD_BUSY ; 
 int /*<<< orphan*/  HERMES_CMD_INIT ; 
 int /*<<< orphan*/  INTEN ; 
 int FUNC0 (struct hermes*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hermes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hermes*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct hermes *hw)
{
	u16 reg;
	int err = 0;
	int k;

	/* We don't want to be interrupted while resetting the chipset */
	hw->inten = 0x0;
	FUNC2(hw, INTEN, 0);
	FUNC2(hw, EVACK, 0xffff);

	/* Normally it's a "can't happen" for the command register to
	   be busy when we go to issue a command because we are
	   serializing all commands.  However we want to have some
	   chance of resetting the card even if it gets into a stupid
	   state, so we actually wait to see if the command register
	   will unbusy itself here. */
	k = CMD_BUSY_TIMEOUT;
	reg = FUNC1(hw, CMD);
	while (k && (reg & HERMES_CMD_BUSY)) {
		if (reg == 0xffff) /* Special case - the card has probably been
				      removed, so don't wait for the timeout */
			return -ENODEV;

		k--;
		FUNC3(1);
		reg = FUNC1(hw, CMD);
	}

	/* No need to explicitly handle the timeout - if we've timed
	   out hermes_issue_cmd() will probably return -EBUSY below */

	/* According to the documentation, EVSTAT may contain
	   obsolete event occurrence information.  We have to acknowledge
	   it by writing EVACK. */
	reg = FUNC1(hw, EVSTAT);
	FUNC2(hw, EVACK, reg);

	/* We don't use hermes_docmd_wait here, because the reset wipes
	   the magic constant in SWSUPPORT0 away, and it gets confused */
	err = FUNC0(hw, HERMES_CMD_INIT, 0, 0, 0, NULL);

	return err;
}