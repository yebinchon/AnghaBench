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
struct TYPE_2__ {int /*<<< orphan*/  rx; } ;
struct uart_port {TYPE_1__ icount; } ;
struct tty_struct {int dummy; } ;

/* Variables and functions */
 long CON_BREAK ; 
 long CON_HUP ; 
 long HV_EWOULDBLOCK ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 int hung_up ; 
 long FUNC0 (long*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int) ; 
 scalar_t__ FUNC4 (struct uart_port*,long) ; 

__attribute__((used)) static int FUNC5(struct uart_port *port, struct tty_struct *tty)
{
	int saw_console_brk = 0;
	int limit = 10000;

	while (limit-- > 0) {
		long status;
		long c = FUNC0(&status);

		if (status == HV_EWOULDBLOCK)
			break;

		if (c == CON_BREAK) {
			if (FUNC2(port))
				continue;
			saw_console_brk = 1;
			c = 0;
		}

		if (c == CON_HUP) {
			hung_up = 1;
			FUNC3(port, 0);
		} else if (hung_up) {
			hung_up = 0;
			FUNC3(port, 1);
		}

		if (tty == NULL) {
			FUNC4(port, c);
			continue;
		}

		port->icount.rx++;

		if (FUNC4(port, c))
			continue;

		FUNC1(tty, c, TTY_NORMAL);
	}

	return saw_console_brk;
}