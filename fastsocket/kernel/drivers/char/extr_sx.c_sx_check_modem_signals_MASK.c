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
struct TYPE_6__ {TYPE_3__* tty; int /*<<< orphan*/  open_wait; } ;
struct TYPE_8__ {TYPE_2__ port; } ;
struct sx_port {int c_dcd; TYPE_4__ gs; } ;
struct TYPE_7__ {TYPE_1__* termios; } ;
struct TYPE_5__ {int c_cflag; } ;

/* Variables and functions */
 int CLOCAL ; 
 int HS_IDLE_CLOSED ; 
 int ST_BREAK ; 
 int ST_DCD ; 
 int /*<<< orphan*/  SX_DEBUG_MODEMSIGNALS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int hi_hstat ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct sx_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sx_port*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct sx_port *port)
{
	int hi_state;
	int c_dcd;

	hi_state = FUNC2(port, hi_state);
	FUNC1(SX_DEBUG_MODEMSIGNALS, "Checking modem signals (%d/%d)\n",
			port->c_dcd, FUNC5(&port->gs.port));

	if (hi_state & ST_BREAK) {
		hi_state &= ~ST_BREAK;
		FUNC1(SX_DEBUG_MODEMSIGNALS, "got a break.\n");
		FUNC3(port, hi_state, hi_state);
		FUNC0(&port->gs);
	}
	if (hi_state & ST_DCD) {
		hi_state &= ~ST_DCD;
		FUNC1(SX_DEBUG_MODEMSIGNALS, "got a DCD change.\n");
		FUNC3(port, hi_state, hi_state);
		c_dcd = FUNC5(&port->gs.port);
		FUNC1(SX_DEBUG_MODEMSIGNALS, "DCD is now %d\n", c_dcd);
		if (c_dcd != port->c_dcd) {
			port->c_dcd = c_dcd;
			if (FUNC5(&port->gs.port)) {
				/* DCD went UP */
				if ((FUNC2(port, hi_hstat) !=
						HS_IDLE_CLOSED) &&
						!(port->gs.port.tty->termios->
							c_cflag & CLOCAL)) {
					/* Are we blocking in open? */
					FUNC1(SX_DEBUG_MODEMSIGNALS, "DCD "
						"active, unblocking open\n");
					FUNC6(&port->gs.port.
							open_wait);
				} else {
					FUNC1(SX_DEBUG_MODEMSIGNALS, "DCD "
						"raised. Ignoring.\n");
				}
			} else {
				/* DCD went down! */
				if (!(port->gs.port.tty->termios->c_cflag & CLOCAL)){
					FUNC1(SX_DEBUG_MODEMSIGNALS, "DCD "
						"dropped. hanging up....\n");
					FUNC4(port->gs.port.tty);
				} else {
					FUNC1(SX_DEBUG_MODEMSIGNALS, "DCD "
						"dropped. ignoring.\n");
				}
			}
		} else {
			FUNC1(SX_DEBUG_MODEMSIGNALS, "Hmmm. card told us "
				"DCD changed, but it didn't.\n");
		}
	}
}