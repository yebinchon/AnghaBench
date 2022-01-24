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
struct sdio_uart_port {size_t index; int /*<<< orphan*/  open_lock; int /*<<< orphan*/  tty; scalar_t__ opened; int /*<<< orphan*/  func_lock; struct sdio_func* func; } ;
struct sdio_func {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_uart_port*) ; 
 struct sdio_uart_port** sdio_uart_table ; 
 int /*<<< orphan*/  sdio_uart_table_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct sdio_uart_port *port)
{
	struct sdio_func *func;

	FUNC0(sdio_uart_table[port->index] != port);

	FUNC8(&sdio_uart_table_lock);
	sdio_uart_table[port->index] = NULL;
	FUNC9(&sdio_uart_table_lock);

	/*
	 * We're killing a port that potentially still is in use by
	 * the tty layer. Be careful to prevent any further access
	 * to the SDIO function and arrange for the tty layer to
	 * give up on that port ASAP.
	 * Beware: the lock ordering is critical.
	 */
	FUNC1(&port->open_lock);
	FUNC1(&port->func_lock);
	func = port->func;
	FUNC3(func);
	port->func = NULL;
	FUNC2(&port->func_lock);
	if (port->opened)
		FUNC10(port->tty);
	FUNC2(&port->open_lock);
	FUNC6(func);
	FUNC4(func);
	FUNC5(func);

	FUNC7(port);
}