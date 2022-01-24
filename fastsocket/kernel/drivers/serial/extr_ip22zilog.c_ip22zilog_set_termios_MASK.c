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
struct uart_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct uart_ip22zilog_port {TYPE_1__ port; int /*<<< orphan*/  flags; } ;
struct ktermios {int /*<<< orphan*/  c_cflag; int /*<<< orphan*/  c_iflag; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  IP22ZILOG_FLAG_MODEM_STATUS ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int ZS_CLOCK ; 
 int ZS_CLOCK_DIVISOR ; 
 int /*<<< orphan*/  FUNC3 (struct uart_ip22zilog_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_ip22zilog_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(struct uart_port *port, struct ktermios *termios,
		      struct ktermios *old)
{
	struct uart_ip22zilog_port *up = (struct uart_ip22zilog_port *) port;
	unsigned long flags;
	int baud, brg;

	baud = FUNC7(port, termios, old, 1200, 76800);

	FUNC5(&up->port.lock, flags);

	brg = FUNC0(baud, ZS_CLOCK / ZS_CLOCK_DIVISOR);

	FUNC3(up, termios->c_cflag, termios->c_iflag, brg);

	if (FUNC1(&up->port, termios->c_cflag))
		up->flags |= IP22ZILOG_FLAG_MODEM_STATUS;
	else
		up->flags &= ~IP22ZILOG_FLAG_MODEM_STATUS;

	FUNC4(up, FUNC2(port));
	FUNC8(port, termios->c_cflag, baud);

	FUNC6(&up->port.lock, flags);
}