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
struct uart_state {struct uart_port* uart_port; } ;
struct uart_port {int /*<<< orphan*/  lock; } ;
struct tty_struct {struct uart_state* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty)
{
	struct uart_state *state = tty->driver_data;
	struct uart_port *port = state->uart_port;
	unsigned long flags;

	FUNC1(&port->lock, flags);
	FUNC0(tty);
	FUNC2(&port->lock, flags);
}