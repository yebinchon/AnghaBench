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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq; } ;
struct sn_cons_port {scalar_t__ sc_interrupt_timeout; int /*<<< orphan*/  sc_timer; TYPE_1__ sc_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRANSMIT_RAW ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ sn_process_input ; 
 int /*<<< orphan*/  FUNC1 (struct sn_cons_port*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct sn_cons_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct sn_cons_port *port = (struct sn_cons_port *)data;
	unsigned long flags;

	if (!port)
		return;

	if (!port->sc_port.irq) {
		FUNC3(&port->sc_port.lock, flags);
		if (sn_process_input)
			FUNC1(port, flags);
		FUNC2(port, TRANSMIT_RAW);
		FUNC4(&port->sc_port.lock, flags);
		FUNC0(&port->sc_timer,
			  jiffies + port->sc_interrupt_timeout);
	}
}