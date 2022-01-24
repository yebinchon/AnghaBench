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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct mn10300_serial_port {scalar_t__ type; int* _status; int tx_cts; TYPE_1__ uart; scalar_t__ intr_flags; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MNSCx_RX_AVAIL ; 
 int MNSCx_TX_EMPTY ; 
 int MNSCx_TX_SPACE ; 
 scalar_t__ PORT_MN10300_CTS ; 
 int SC2STR_CTS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mn10300_serial_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mn10300_serial_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct mn10300_serial_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct mn10300_serial_port *port = dev_id;
	u8 st;

	FUNC5(&port->uart.lock);

	if (port->intr_flags) {
		FUNC0("INT %s: %x", port->name, port->intr_flags);

		if (FUNC1(&port->intr_flags, MNSCx_RX_AVAIL))
			FUNC3(port);

		if (FUNC1(&port->intr_flags,
					MNSCx_TX_SPACE | MNSCx_TX_EMPTY))
			FUNC4(port);
	}

	/* the only modem control line amongst the whole lot is CTS on
	 * serial port 2 */
	if (port->type == PORT_MN10300_CTS) {
		st = *port->_status;
		if ((port->tx_cts ^ st) & SC2STR_CTS)
			FUNC2(port, st);
	}

	FUNC6(&port->uart.lock);

	return IRQ_HANDLED;
}