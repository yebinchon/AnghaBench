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
struct uart_sunzilog_port {int dummy; } ;
struct uart_port {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct uart_sunzilog_port* FUNC0 (struct uart_port*) ; 
 scalar_t__ FUNC1 (struct uart_sunzilog_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_sunzilog_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct uart_port *port)
{
	struct uart_sunzilog_port *up = FUNC0(port);
	unsigned long flags;

	if (FUNC1(up))
		return 0;

	FUNC3(&port->lock, flags);
	FUNC2(up);
	FUNC4(&port->lock, flags);
	return 0;
}