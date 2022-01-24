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
struct sdio_uart_port {int index; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  func_lock; int /*<<< orphan*/  open_lock; int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int EBUSY ; 
 int UART_NR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sdio_uart_port** sdio_uart_table ; 
 int /*<<< orphan*/  sdio_uart_table_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct sdio_uart_port *port)
{
	int index, ret = -EBUSY;

	FUNC0(&port->kref);
	FUNC1(&port->open_lock);
	FUNC1(&port->func_lock);
	FUNC3(&port->write_lock);

	FUNC2(&sdio_uart_table_lock);
	for (index = 0; index < UART_NR; index++) {
		if (!sdio_uart_table[index]) {
			port->index = index;
			sdio_uart_table[index] = port;
			ret = 0;
			break;
		}
	}
	FUNC4(&sdio_uart_table_lock);

	return ret;
}