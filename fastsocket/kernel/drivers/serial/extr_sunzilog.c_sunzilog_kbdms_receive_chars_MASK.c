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
struct uart_sunzilog_port {int /*<<< orphan*/  serio; scalar_t__ serio_open; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct uart_sunzilog_port*) ; 
 scalar_t__ FUNC1 (struct uart_sunzilog_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned char,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_sunzilog_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_sunzilog_port *up,
					 unsigned char ch, int is_break)
{
	if (FUNC0(up)) {
		/* Stop-A is handled by drivers/char/keyboard.c now. */
#ifdef CONFIG_SERIO
		if (up->serio_open)
			serio_interrupt(&up->serio, ch, 0);
#endif
	} else if (FUNC1(up)) {
		int ret = FUNC3(ch, is_break);

		switch (ret) {
		case 2:
			FUNC4(up);
			/* fallthru */
		case 1:
			break;

		case 0:
#ifdef CONFIG_SERIO
			if (up->serio_open)
				serio_interrupt(&up->serio, ch, 0);
#endif
			break;
		};
	}
}