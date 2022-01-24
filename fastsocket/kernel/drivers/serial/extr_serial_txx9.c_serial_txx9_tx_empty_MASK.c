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
struct uart_txx9_port {TYPE_1__ port; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 unsigned int TIOCSER_TEMT ; 
 int /*<<< orphan*/  TXX9_SICISR ; 
 int TXX9_SICISR_TXALS ; 
 int FUNC0 (struct uart_txx9_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_txx9_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static unsigned int FUNC4(struct uart_port *port)
{
	struct uart_txx9_port *up = FUNC3(port);
	unsigned long flags;
	unsigned int ret;

	FUNC1(&up->port.lock, flags);
	ret = (FUNC0(up, TXX9_SICISR) & TXX9_SICISR_TXALS) ? TIOCSER_TEMT : 0;
	FUNC2(&up->port.lock, flags);

	return ret;
}