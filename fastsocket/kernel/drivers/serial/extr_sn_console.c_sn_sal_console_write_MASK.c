#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lock; TYPE_2__* state; } ;
struct sn_cons_port {TYPE_4__* sc_ops; TYPE_3__ sc_port; int /*<<< orphan*/  sc_is_asynch; } ;
struct console {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  sal_puts_raw; } ;
struct TYPE_5__ {int head; int tail; } ;
struct TYPE_6__ {TYPE_1__ xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,unsigned int) ; 
 struct sn_cons_port sal_console_port ; 
 int /*<<< orphan*/  FUNC3 (struct sn_cons_port*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct console *co, const char *s, unsigned count)
{
	unsigned long flags = 0;
	struct sn_cons_port *port = &sal_console_port;
	static int stole_lock = 0;

	FUNC0(!port->sc_is_asynch);

	/* We can't look at the xmit buffer if we're not registered with serial core
	 *  yet.  So only do the fancy recovery after registering
	 */
	if (!port->sc_port.state) {
		/* Not yet registered with serial core - simple case */
		FUNC2(port->sc_ops->sal_puts_raw, s, count);
		return;
	}

	/* somebody really wants this output, might be an
	 * oops, kdb, panic, etc.  make sure they get it. */
	if (FUNC4(&port->sc_port.lock)) {
		int lhead = port->sc_port.state->xmit.head;
		int ltail = port->sc_port.state->xmit.tail;
		int counter, got_lock = 0;

		/*
		 * We attempt to determine if someone has died with the
		 * lock. We wait ~20 secs after the head and tail ptrs
		 * stop moving and assume the lock holder is not functional
		 * and plow ahead. If the lock is freed within the time out
		 * period we re-get the lock and go ahead normally. We also
		 * remember if we have plowed ahead so that we don't have
		 * to wait out the time out period again - the asumption
		 * is that we will time out again.
		 */

		for (counter = 0; counter < 150; FUNC1(125), counter++) {
			if (!FUNC4(&port->sc_port.lock)
			    || stole_lock) {
				if (!stole_lock) {
					FUNC5(&port->sc_port.lock,
							  flags);
					got_lock = 1;
				}
				break;
			} else {
				/* still locked */
				if ((lhead != port->sc_port.state->xmit.head)
				    || (ltail !=
					port->sc_port.state->xmit.tail)) {
					lhead =
						port->sc_port.state->xmit.head;
					ltail =
						port->sc_port.state->xmit.tail;
					counter = 0;
				}
			}
		}
		/* flush anything in the serial core xmit buffer, raw */
		FUNC3(port, 1);
		if (got_lock) {
			FUNC6(&port->sc_port.lock, flags);
			stole_lock = 0;
		} else {
			/* fell thru */
			stole_lock = 1;
		}
		FUNC2(port->sc_ops->sal_puts_raw, s, count);
	} else {
		stole_lock = 0;
		FUNC5(&port->sc_port.lock, flags);
		FUNC3(port, 1);
		FUNC6(&port->sc_port.lock, flags);

		FUNC2(port->sc_ops->sal_puts_raw, s, count);
	}
}