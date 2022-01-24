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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct uart_sio_port {TYPE_1__ port; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 unsigned int TIOCSER_TEMT ; 
 int /*<<< orphan*/  UART_LSR ; 
 int UART_LSR_TEMT ; 
 int FUNC0 (struct uart_sio_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC3(struct uart_port *port)
{
	struct uart_sio_port *up = (struct uart_sio_port *)port;
	unsigned long flags;
	unsigned int ret;

	FUNC1(&up->port.lock, flags);
	ret = FUNC0(up, UART_LSR) & UART_LSR_TEMT ? TIOCSER_TEMT : 0;
	FUNC2(&up->port.lock, flags);

	return ret;
}