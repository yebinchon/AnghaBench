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
struct uart_state {TYPE_1__* uart_port; int /*<<< orphan*/  xmit; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty)
{
	struct uart_state *state = tty->driver_data;
	unsigned long flags;
	int ret;

	FUNC0(&state->uart_port->lock, flags);
	ret = FUNC2(&state->xmit);
	FUNC1(&state->uart_port->lock, flags);
	return ret;
}