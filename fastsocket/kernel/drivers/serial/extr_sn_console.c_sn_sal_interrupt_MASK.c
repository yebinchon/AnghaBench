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
struct sn_cons_port {TYPE_1__ sc_port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int SAL_CONSOLE_INTR_RECV ; 
 int SAL_CONSOLE_INTR_XMIT ; 
 int /*<<< orphan*/  TRANSMIT_BUFFERED ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sn_cons_port*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct sn_cons_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct sn_cons_port *port = (struct sn_cons_port *)dev_id;
	unsigned long flags;
	int status = FUNC0();

	if (!port)
		return IRQ_NONE;

	FUNC3(&port->sc_port.lock, flags);
	if (status & SAL_CONSOLE_INTR_RECV) {
		FUNC1(port, flags);
	}
	if (status & SAL_CONSOLE_INTR_XMIT) {
		FUNC2(port, TRANSMIT_BUFFERED);
	}
	FUNC4(&port->sc_port.lock, flags);
	return IRQ_HANDLED;
}