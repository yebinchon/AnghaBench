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
struct uart_sunsu_port {TYPE_1__ port; int /*<<< orphan*/  ier; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_IER_MSI ; 
 int /*<<< orphan*/  FUNC0 (struct uart_sunsu_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port)
{
	struct uart_sunsu_port *up = (struct uart_sunsu_port *) port;
	unsigned long flags;

	FUNC1(&up->port.lock, flags);
	up->ier |= UART_IER_MSI;
	FUNC0(up, UART_IER, up->ier);
	FUNC2(&up->port.lock, flags);
}