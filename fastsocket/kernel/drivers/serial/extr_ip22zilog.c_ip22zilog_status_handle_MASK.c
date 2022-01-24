#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct zilog_channel {int /*<<< orphan*/  control; } ;
struct TYPE_7__ {int /*<<< orphan*/  dsr; } ;
struct TYPE_10__ {TYPE_3__* state; TYPE_1__ icount; } ;
struct uart_ip22zilog_port {int* curregs; unsigned char prev_status; TYPE_4__ port; int /*<<< orphan*/  tty_break; } ;
struct TYPE_8__ {int /*<<< orphan*/  delta_msr_wait; } ;
struct TYPE_9__ {TYPE_2__ port; } ;

/* Variables and functions */
 int BRKIE ; 
 unsigned char BRK_ABRT ; 
 unsigned char CTS ; 
 unsigned char DCD ; 
 size_t R15 ; 
 int /*<<< orphan*/  RES_EXT_INT ; 
 int /*<<< orphan*/  Rx_BRK ; 
 int /*<<< orphan*/  Rx_SYS ; 
 unsigned char SYNC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct uart_ip22zilog_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct zilog_channel*) ; 
 unsigned char FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct uart_ip22zilog_port *up,
				   struct zilog_channel *channel)
{
	unsigned char status;

	status = FUNC3(&channel->control);
	FUNC0();

	FUNC8(RES_EXT_INT, &channel->control);
	FUNC0();
	FUNC2(channel);

	if (up->curregs[R15] & BRKIE) {
		if ((status & BRK_ABRT) && !(up->prev_status & BRK_ABRT)) {
			if (FUNC4(&up->port))
				up->tty_break = Rx_SYS;
			else
				up->tty_break = Rx_BRK;
		}
	}

	if (FUNC1(up)) {
		if (status & SYNC)
			up->port.icount.dsr++;

		/* The Zilog just gives us an interrupt when DCD/CTS/etc. change.
		 * But it does not tell us which bit has changed, we have to keep
		 * track of this ourselves.
		 */
		if ((status ^ up->prev_status) ^ DCD)
			FUNC6(&up->port,
					       (status & DCD));
		if ((status ^ up->prev_status) ^ CTS)
			FUNC5(&up->port,
					       (status & CTS));

		FUNC7(&up->port.state->port.delta_msr_wait);
	}

	up->prev_status = status;
}