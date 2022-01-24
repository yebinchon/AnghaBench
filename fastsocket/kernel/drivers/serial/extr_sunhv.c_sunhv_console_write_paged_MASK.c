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
 unsigned long HV_EOK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  con_write_page ; 
 unsigned int FUNC1 (char const*,unsigned int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ oops_in_progress ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC7 (unsigned long,unsigned long,unsigned long*) ; 
 struct uart_port* sunhv_port ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct console *con, const char *s, unsigned n)
{
	struct uart_port *port = sunhv_port;
	unsigned long flags;
	int locked = 1;

	FUNC3(flags);
	if (port->sysrq) {
		locked = 0;
	} else if (oops_in_progress) {
		locked = FUNC5(&port->lock);
	} else
		FUNC4(&port->lock);

	while (n > 0) {
		unsigned long ra = FUNC0(con_write_page);
		unsigned long page_bytes;
		unsigned int cpy = FUNC1(s, n,
						       &page_bytes);

		n -= cpy;
		s += cpy;
		while (page_bytes > 0) {
			unsigned long written;
			int limit = 1000000;

			while (limit--) {
				unsigned long stat;

				stat = FUNC7(ra, page_bytes,
						       &written);
				if (stat == HV_EOK)
					break;
				FUNC8(1);
			}
			if (limit < 0)
				break;
			page_bytes -= written;
			ra += written;
		}
	}

	if (locked)
		FUNC6(&port->lock);
	FUNC2(flags);
}