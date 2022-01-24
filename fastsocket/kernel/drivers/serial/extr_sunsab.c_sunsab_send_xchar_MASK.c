#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct uart_sunsab_port {TYPE_3__ port; TYPE_2__* regs; } ;
struct uart_port {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tic; } ;
struct TYPE_5__ {TYPE_1__ w; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_sunsab_port*) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, char ch)
{
	struct uart_sunsab_port *up = (struct uart_sunsab_port *) port;
	unsigned long flags;

	FUNC0(&up->port.lock, flags);

	FUNC2(up);
	FUNC3(ch, &up->regs->w.tic);

	FUNC1(&up->port.lock, flags);
}