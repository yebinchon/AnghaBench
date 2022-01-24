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
struct uart_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct uart_8250_port {unsigned int lsr_saved_flags; TYPE_1__ port; } ;

/* Variables and functions */
 unsigned int BOTH_EMPTY ; 
 unsigned int LSR_SAVE_FLAGS ; 
 unsigned int TIOCSER_TEMT ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned int FUNC0 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC3(struct uart_port *port)
{
	struct uart_8250_port *up = (struct uart_8250_port *)port;
	unsigned long flags;
	unsigned int lsr;

	FUNC1(&up->port.lock, flags);
	lsr = FUNC0(up, UART_LSR);
	up->lsr_saved_flags |= lsr & LSR_SAVE_FLAGS;
	FUNC2(&up->port.lock, flags);

	return (lsr & BOTH_EMPTY) == BOTH_EMPTY ? TIOCSER_TEMT : 0;
}