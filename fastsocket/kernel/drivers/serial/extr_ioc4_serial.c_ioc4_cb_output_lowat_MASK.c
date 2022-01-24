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
struct uart_port {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *the_port)
{
	unsigned long pflags;

	/* ip_lock is set on the call here */
	if (the_port) {
		FUNC0(&the_port->lock, pflags);
		FUNC2(the_port);
		FUNC1(&the_port->lock, pflags);
	}
}