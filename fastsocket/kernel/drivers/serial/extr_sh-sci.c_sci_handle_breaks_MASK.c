#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int /*<<< orphan*/  dev; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
struct sci_port {int break_flag; } ;
struct TYPE_3__ {struct tty_struct* tty; } ;
struct TYPE_4__ {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCxSR ; 
 unsigned short FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  TTY_BREAK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct uart_port*) ; 
 unsigned short FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct sci_port* FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 scalar_t__ FUNC6 (struct tty_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct uart_port*) ; 

__attribute__((used)) static inline int FUNC8(struct uart_port *port)
{
	int copied = 0;
	unsigned short status = FUNC3(port, SCxSR);
	struct tty_struct *tty = port->state->port.tty;
	struct sci_port *s = FUNC4(port);

	if (FUNC7(port))
		return 0;

	if (!s->break_flag && status & FUNC0(port)) {
#if defined(CONFIG_CPU_SH3)
		/* Debounce break */
		s->break_flag = 1;
#endif
		/* Notify of BREAK */
		if (FUNC6(tty, 0, TTY_BREAK))
			copied++;

		FUNC1(port->dev, "BREAK detected\n");
	}

	if (copied)
		FUNC5(tty);

	copied += FUNC2(port);

	return copied;
}