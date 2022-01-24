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
struct uart_port {unsigned int mctrl; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_mctrl ) (struct uart_port*,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,unsigned int) ; 

__attribute__((used)) static inline void
FUNC3(struct uart_port *port, unsigned int set, unsigned int clear)
{
	unsigned long flags;
	unsigned int old;

	FUNC0(&port->lock, flags);
	old = port->mctrl;
	port->mctrl = (old & ~clear) | set;
	if (old != port->mctrl)
		port->ops->set_mctrl(port, port->mctrl);
	FUNC1(&port->lock, flags);
}