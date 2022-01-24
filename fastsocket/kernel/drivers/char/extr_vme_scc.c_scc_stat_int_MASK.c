#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; scalar_t__ tty; int /*<<< orphan*/  open_wait; } ;
struct TYPE_4__ {TYPE_1__ port; } ;
struct scc_port {unsigned int channel; int c_dcd; TYPE_2__ gs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ASYNC_CHECK_CD ; 
 int /*<<< orphan*/  COMMAND_REG ; 
 int /*<<< orphan*/  CR_EXTSTAT_RESET ; 
 int /*<<< orphan*/  CR_HIGHEST_IUS_RESET ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct scc_port*) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char SR_DCD ; 
 int /*<<< orphan*/  STATUS_REG ; 
 unsigned char* scc_last_status_reg ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct scc_port *port = data;
	unsigned channel = port->channel;
	unsigned char	last_sr, sr, changed;
	FUNC0(port);

	last_sr = scc_last_status_reg[channel];
	sr = scc_last_status_reg[channel] = FUNC1(STATUS_REG);
	changed = last_sr ^ sr;

	if (changed & SR_DCD) {
		port->c_dcd = !!(sr & SR_DCD);
		if (!(port->gs.port.flags & ASYNC_CHECK_CD))
			;	/* Don't report DCD changes */
		else if (port->c_dcd) {
			FUNC5(&port->gs.port.open_wait);
		}
		else {
			if (port->gs.port.tty)
				FUNC4 (port->gs.port.tty);
		}
	}
	FUNC2(COMMAND_REG, CR_EXTSTAT_RESET);
	FUNC3(COMMAND_REG, CR_HIGHEST_IUS_RESET);
	return IRQ_HANDLED;
}