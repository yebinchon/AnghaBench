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
typedef  unsigned int u8 ;
typedef  unsigned int u16 ;
struct cafe_camera {int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  smbus_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAFE_SMBUS_TIMEOUT ; 
 int EIO ; 
 int /*<<< orphan*/  REG_TWSIC0 ; 
 int /*<<< orphan*/  REG_TWSIC1 ; 
 unsigned int TWSIC0_CLKDIV ; 
 unsigned int TWSIC0_EN ; 
 unsigned int TWSIC0_OVMAGIC ; 
 unsigned int TWSIC0_SID ; 
 unsigned int TWSIC0_SID_SHIFT ; 
 unsigned int TWSIC1_ADDR ; 
 unsigned int TWSIC1_ADDR_SHIFT ; 
 unsigned int TWSIC1_ERROR ; 
 unsigned int TWSIC1_WSTAT ; 
 unsigned int FUNC0 (struct cafe_camera*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cafe_camera*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC3 (struct cafe_camera*,char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct cafe_camera *cam,
		u16 addr, u8 command, u8 value)
{
	unsigned int rval;
	unsigned long flags;

	FUNC5(&cam->dev_lock, flags);
	rval = TWSIC0_EN | ((addr << TWSIC0_SID_SHIFT) & TWSIC0_SID);
	rval |= TWSIC0_OVMAGIC;  /* Make OV sensors work */
	/*
	 * Marvell sez set clkdiv to all 1's for now.
	 */
	rval |= TWSIC0_CLKDIV;
	FUNC1(cam, REG_TWSIC0, rval);
	(void) FUNC0(cam, REG_TWSIC1); /* force write */
	rval = value | ((command << TWSIC1_ADDR_SHIFT) & TWSIC1_ADDR);
	FUNC1(cam, REG_TWSIC1, rval);
	FUNC6(&cam->dev_lock, flags);

	/* Unfortunately, reading TWSIC1 too soon after sending a command
	 * causes the device to die.
	 * Use a busy-wait because we often send a large quantity of small
	 * commands at-once; using msleep() would cause a lot of context
	 * switches which take longer than 2ms, resulting in a noticable
	 * boot-time and capture-start delays.
	 */
	FUNC4(2);

	/*
	 * Another sad fact is that sometimes, commands silently complete but
	 * cafe_smbus_write_done() never becomes aware of this.
	 * This happens at random and appears to possible occur with any
	 * command.
	 * We don't understand why this is. We work around this issue
	 * with the timeout in the wait below, assuming that all commands
	 * complete within the timeout.
	 */
	FUNC7(cam->smbus_wait, FUNC2(cam),
			CAFE_SMBUS_TIMEOUT);

	FUNC5(&cam->dev_lock, flags);
	rval = FUNC0(cam, REG_TWSIC1);
	FUNC6(&cam->dev_lock, flags);

	if (rval & TWSIC1_WSTAT) {
		FUNC3(cam, "SMBUS write (%02x/%02x/%02x) timed out\n", addr,
				command, value);
		return -EIO;
	}
	if (rval & TWSIC1_ERROR) {
		FUNC3(cam, "SMBUS write (%02x/%02x/%02x) error\n", addr,
				command, value);
		return -EIO;
	}
	return 0;
}