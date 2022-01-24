#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  name; scalar_t__ driver_data; } ;
struct TYPE_8__ {TYPE_3__ volatile* tx_bd_base; TYPE_3__* tx_cur; TYPE_1__* state; } ;
typedef  TYPE_2__ ser_info_t ;
struct TYPE_10__ {int /*<<< orphan*/  state; } ;
struct TYPE_9__ {int status; } ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef  TYPE_3__ QUICC_BD ;

/* Variables and functions */
 int BD_SC_READY ; 
 scalar_t__ PORT_UNKNOWN ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int TX_NUM_FIFO ; 
 TYPE_4__* current ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int lsr ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct tty_struct *tty, int timeout)
{
	ser_info_t *info = (ser_info_t *)tty->driver_data;
	unsigned long orig_jiffies, char_time;
	/*int lsr;*/
	volatile QUICC_BD *bdp;
	
	if (FUNC5(info, tty->name, "rs_wait_until_sent"))
		return;

#ifdef maybe
	if (info->state->type == PORT_UNKNOWN)
		return;
#endif

	orig_jiffies = jiffies;
	/*
	 * Set the check interval to be 1/5 of the estimated time to
	 * send a single character, and make it at least 1.  The check
	 * interval should also be less than the timeout.
	 * 
	 * Note: we have to use pretty tight timings here to satisfy
	 * the NIST-PCTS.
	 */
	char_time = 1;
	if (timeout)
		char_time = FUNC2(char_time, (unsigned long)timeout);
#ifdef SERIAL_DEBUG_RS_WAIT_UNTIL_SENT
	printk("In rs_wait_until_sent(%d) check=%lu...", timeout, char_time);
	printk("jiff=%lu...", jiffies);
#endif

	FUNC1();
	/* We go through the loop at least once because we can't tell
	 * exactly when the last character exits the shifter.  There can
	 * be at least two characters waiting to be sent after the buffers
	 * are empty.
	 */
	do {
#ifdef SERIAL_DEBUG_RS_WAIT_UNTIL_SENT
		printk("lsr = %d (jiff=%lu)...", lsr, jiffies);
#endif
/*		current->counter = 0;	 make us low-priority */
		FUNC3(FUNC0(char_time));
		if (FUNC6(current))
			break;
		if (timeout && (FUNC7(jiffies, orig_jiffies + timeout)))
			break;
		/* The 'tx_cur' is really the next buffer to send.  We
		 * have to back up to the previous BD and wait for it
		 * to go.  This isn't perfect, because all this indicates
		 * is the buffer is available.  There are still characters
		 * in the CPM FIFO.
		 */
		bdp = info->tx_cur;
		if (bdp == info->tx_bd_base)
			bdp += (TX_NUM_FIFO-1);
		else
			bdp--;
	} while (bdp->status & BD_SC_READY);
	current->state = TASK_RUNNING;
	FUNC8();
#ifdef SERIAL_DEBUG_RS_WAIT_UNTIL_SENT
	printk("lsr = %d (jiff=%lu)...done\n", lsr, jiffies);
#endif
}