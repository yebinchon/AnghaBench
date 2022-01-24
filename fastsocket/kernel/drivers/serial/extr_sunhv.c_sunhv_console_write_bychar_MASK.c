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
struct uart_port {int /*<<< orphan*/  lock; scalar_t__ sysrq; } ;
struct console {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ oops_in_progress ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,char) ; 
 struct uart_port* sunhv_port ; 

__attribute__((used)) static void FUNC6(struct console *con, const char *s, unsigned n)
{
	struct uart_port *port = sunhv_port;
	unsigned long flags;
	int i, locked = 1;

	FUNC1(flags);
	if (port->sysrq) {
		locked = 0;
	} else if (oops_in_progress) {
		locked = FUNC3(&port->lock);
	} else
		FUNC2(&port->lock);

	for (i = 0; i < n; i++) {
		if (*s == '\n')
			FUNC5(port, '\r');
		FUNC5(port, *s++);
	}

	if (locked)
		FUNC4(&port->lock);
	FUNC0(flags);
}