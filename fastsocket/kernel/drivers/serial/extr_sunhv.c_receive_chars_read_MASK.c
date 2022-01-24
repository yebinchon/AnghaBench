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
struct TYPE_2__ {unsigned long rx; } ;
struct uart_port {TYPE_1__ icount; } ;
struct tty_struct {int dummy; } ;

/* Variables and functions */
 long CON_BREAK ; 
 long CON_HUP ; 
 long HV_EOK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned long FUNC0 (scalar_t__*) ; 
 scalar_t__* con_read_page ; 
 int hung_up ; 
 long FUNC1 (unsigned long,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,scalar_t__*,unsigned long) ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct uart_port *port, struct tty_struct *tty)
{
	int saw_console_brk = 0;
	int limit = 10000;

	while (limit-- > 0) {
		unsigned long ra = FUNC0(con_read_page);
		unsigned long bytes_read, i;
		long stat = FUNC1(ra, PAGE_SIZE, &bytes_read);

		if (stat != HV_EOK) {
			bytes_read = 0;

			if (stat == CON_BREAK) {
				if (FUNC3(port))
					continue;
				saw_console_brk = 1;
				*con_read_page = 0;
				bytes_read = 1;
			} else if (stat == CON_HUP) {
				hung_up = 1;
				FUNC4(port, 0);
				continue;
			} else {
				/* HV_EWOULDBLOCK, etc.  */
				break;
			}
		}

		if (hung_up) {
			hung_up = 0;
			FUNC4(port, 1);
		}

		for (i = 0; i < bytes_read; i++)
			FUNC5(port, con_read_page[i]);

		if (tty == NULL)
			continue;

		port->icount.rx += bytes_read;

		FUNC2(tty, con_read_page, bytes_read);
	}

	return saw_console_brk;
}