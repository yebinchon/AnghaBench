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
struct TYPE_2__ {int /*<<< orphan*/  port; } ;
struct sx_port {TYPE_1__ gs; int /*<<< orphan*/  c_dcd; } ;

/* Variables and functions */
 int IP_CTS ; 
 int IP_DCD ; 
 int IP_DSR ; 
 int IP_RI ; 
 int OP_DTR ; 
 int OP_RTS ; 
 int /*<<< orphan*/  SX_DEBUG_MODEMSIGNALS ; 
 int TIOCM_CAR ; 
 int TIOCM_CTS ; 
 int TIOCM_DSR ; 
 int TIOCM_DTR ; 
 int TIOCM_RNG ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  hi_ip ; 
 int /*<<< orphan*/  hi_op ; 
 int /*<<< orphan*/  hi_state ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct sx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct sx_port *port)
{
	int i_stat, o_stat;

	o_stat = FUNC1(port, hi_op);
	i_stat = FUNC1(port, hi_ip);

	FUNC0(SX_DEBUG_MODEMSIGNALS, "getsignals: %d/%d  (%d/%d) "
			"%02x/%02x\n",
			(o_stat & OP_DTR) != 0, (o_stat & OP_RTS) != 0,
			port->c_dcd, FUNC2(&port->gs.port),
			FUNC1(port, hi_ip),
			FUNC1(port, hi_state));

	return (((o_stat & OP_DTR) ? TIOCM_DTR : 0) |
		((o_stat & OP_RTS) ? TIOCM_RTS : 0) |
		((i_stat & IP_CTS) ? TIOCM_CTS : 0) |
		((i_stat & IP_DCD) ? TIOCM_CAR : 0) |
		((i_stat & IP_DSR) ? TIOCM_DSR : 0) |
		((i_stat & IP_RI) ? TIOCM_RNG : 0));
}