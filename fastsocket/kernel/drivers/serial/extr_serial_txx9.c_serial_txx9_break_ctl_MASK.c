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
 int /*<<< orphan*/  TXX9_SIFLCR ; 
 int /*<<< orphan*/  TXX9_SIFLCR_TBRK ; 
 int /*<<< orphan*/  FUNC0 (struct uart_txx9_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_txx9_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_txx9_port* FUNC4 (struct uart_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port, int break_state)
{
	struct uart_txx9_port *up = FUNC4(port);
	unsigned long flags;

	FUNC2(&up->port.lock, flags);
	if (break_state == -1)
		FUNC1(up, TXX9_SIFLCR, TXX9_SIFLCR_TBRK);
	else
		FUNC0(up, TXX9_SIFLCR, TXX9_SIFLCR_TBRK);
	FUNC3(&up->port.lock, flags);
}