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
struct TYPE_2__ {int /*<<< orphan*/  tty; } ;
struct gs_port {int baud; TYPE_1__ port; int /*<<< orphan*/  xmit_buf; int /*<<< orphan*/  xmit_cnt; } ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int /*<<< orphan*/  GS_DEBUG_FLUSH ; 
 int HZ ; 
 unsigned long MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC9 (void * ptr, unsigned long timeout) 
{
	struct gs_port *port = ptr;
	unsigned long end_jiffies;
	int jiffies_to_transmit, charsleft = 0, rv = 0;
	int rcib;

	FUNC0();

	FUNC2 (GS_DEBUG_FLUSH, "port=%p.\n", port);
	if (port) {
		FUNC2 (GS_DEBUG_FLUSH, "xmit_cnt=%x, xmit_buf=%p, tty=%p.\n", 
		port->xmit_cnt, port->xmit_buf, port->port.tty);
	}

	if (!port || port->xmit_cnt < 0 || !port->xmit_buf) {
		FUNC2 (GS_DEBUG_FLUSH, "ERROR: !port, !port->xmit_buf or prot->xmit_cnt < 0.\n");
		FUNC1();
		return -EINVAL;  /* This is an error which we don't know how to handle. */
	}

	rcib = FUNC3(port->port.tty);

	if(rcib <= 0) {
		FUNC2 (GS_DEBUG_FLUSH, "nothing to wait for.\n");
		FUNC1();
		return rv;
	}
	/* stop trying: now + twice the time it would normally take +  seconds */
	if (timeout == 0) timeout = MAX_SCHEDULE_TIMEOUT;
	end_jiffies  = jiffies; 
	if (timeout !=  MAX_SCHEDULE_TIMEOUT)
		end_jiffies += port->baud?(2 * rcib * 10 * HZ / port->baud):0;
	end_jiffies += timeout;

	FUNC2 (GS_DEBUG_FLUSH, "now=%lx, end=%lx (%ld).\n", 
		    jiffies, end_jiffies, end_jiffies-jiffies); 

	/* the expression is actually jiffies < end_jiffies, but that won't
	   work around the wraparound. Tricky eh? */
	while ((charsleft = FUNC3 (port->port.tty)) &&
	        FUNC8 (end_jiffies, jiffies)) {
		/* Units check: 
		   chars * (bits/char) * (jiffies /sec) / (bits/sec) = jiffies!
		   check! */

		charsleft += 16; /* Allow 16 chars more to be transmitted ... */
		jiffies_to_transmit = port->baud?(1 + charsleft * 10 * HZ / port->baud):0;
		/*                                ^^^ Round up.... */
		if (jiffies_to_transmit <= 0) jiffies_to_transmit = 1;

		FUNC2 (GS_DEBUG_FLUSH, "Expect to finish in %d jiffies "
			    "(%d chars).\n", jiffies_to_transmit, charsleft); 

		FUNC5(FUNC4(jiffies_to_transmit));
		if (FUNC7 (current)) {
			FUNC2 (GS_DEBUG_FLUSH, "Signal pending. Bombing out: "); 
			rv = -EINTR;
			break;
		}
	}

	FUNC2 (GS_DEBUG_FLUSH, "charsleft = %d.\n", charsleft); 
	FUNC6 (TASK_RUNNING);

	FUNC1();
	return rv;
}