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
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int sysbus; int busy; int /*<<< orphan*/  pa_cmd; scalar_t__ status; scalar_t__ command; void* pa_scb; void* pa_iscp; scalar_t__ pad; } ;
struct i596_private {TYPE_1__ iscp; TYPE_1__ scp; int /*<<< orphan*/ * cmd_head; scalar_t__ cmd_backlog; int /*<<< orphan*/  last_cmd; TYPE_1__ scb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  I596_NULL ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_ALTSCP ; 
 int /*<<< orphan*/  PORT_RESET ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  jiffies ; 
 struct i596_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(struct net_device *dev) {
	struct i596_private *lp = FUNC3(dev);
	int boguscnt;

	/* Setup SCP, ISCP, SCB */
	/*
	 * sysbus bits:
	 *  only a single byte is significant - here 0x44
	 *  0x80: big endian mode (details depend on stepping)
	 *  0x40: 1
	 *  0x20: interrupt pin is active low
	 *  0x10: lock function disabled
	 *  0x08: external triggering of bus throttle timers
	 *  0x06: 00: 82586 compat mode, 01: segmented mode, 10: linear mode
	 *  0x01: unused
	 */
	lp->scp.sysbus = 0x00440000; 		/* linear mode */
	lp->scp.pad = 0;			/* must be zero */
	lp->scp.pa_iscp = FUNC6(&(lp->iscp));

	/*
	 * The CPU sets the ISCP to 1 before it gives the first CA()
	 */
	lp->iscp.busy = 0x0001;
	lp->iscp.pa_scb = FUNC6(&(lp->scb));

	lp->scb.command = 0;
	lp->scb.status = 0;
	lp->scb.pa_cmd = I596_NULL;
	/* lp->scb.pa_rfd has been initialised already */

	lp->last_cmd = jiffies;
	lp->cmd_backlog = 0;
	lp->cmd_head = NULL;

	/*
	 * Reset the 82596.
	 * We need to wait 10 systemclock cycles, and
	 * 5 serial clock cycles.
	 */
	FUNC1(0, PORT_RESET);	/* address part ignored */
	FUNC5(100);

	/*
	 * Before the CA signal is asserted, the default SCP address
	 * (0x00fffff4) can be changed to a 16-byte aligned value
	 */
	FUNC1(FUNC6(&lp->scp), PORT_ALTSCP);	/* change the scp address */

	/*
	 * The initialization procedure begins when a
	 * Channel Attention signal is asserted after a reset.
	 */

	FUNC0();

	/*
	 * The ISCP busy is cleared by the 82596 after the SCB address is read.
	 */
	boguscnt = 100;
	while (lp->iscp.busy) {
		if (--boguscnt == 0) {
			/* No i82596 present? */
			FUNC4("%s: i82596 initialization timed out\n",
			       dev->name);
			return 1;
		}
		FUNC5(5);
		FUNC2();
	}
	/* I find here boguscnt==100, so no delay was required. */

	return 0;
}