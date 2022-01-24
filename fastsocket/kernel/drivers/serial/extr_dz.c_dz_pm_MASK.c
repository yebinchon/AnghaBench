#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct dz_port {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dz_port* FUNC4 (struct uart_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_port *uport, unsigned int state,
		  unsigned int oldstate)
{
	struct dz_port *dport = FUNC4(uport);
	unsigned long flags;

	FUNC2(&dport->port.lock, flags);
	if (state < 3)
		FUNC0(&dport->port);
	else
		FUNC1(&dport->port);
	FUNC3(&dport->port.lock, flags);
}