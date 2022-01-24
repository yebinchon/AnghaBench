#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  rx; } ;
struct TYPE_8__ {scalar_t__ ignore_status_mask; int /*<<< orphan*/  lock; TYPE_3__ icount; TYPE_2__* state; } ;
struct nwpserial_port {TYPE_4__ port; int /*<<< orphan*/  dcr_host; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_5__ {struct tty_struct* tty; } ;
struct TYPE_6__ {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ NWPSERIAL_STATUS_RXVALID ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 int /*<<< orphan*/  UART_IIR ; 
 int /*<<< orphan*/  UART_LSR ; 
 int UART_LSR_DR ; 
 int /*<<< orphan*/  UART_RX ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct nwpserial_port *up = dev_id;
	struct tty_struct *tty = up->port.state->port.tty;
	irqreturn_t ret;
	unsigned int iir;
	unsigned char ch;

	FUNC2(&up->port.lock);

	/* check if the uart was the interrupt source. */
	iir = FUNC0(up->dcr_host, UART_IIR);
	if (!iir) {
		ret = IRQ_NONE;
		goto out;
	}

	do {
		up->port.icount.rx++;
		ch = FUNC0(up->dcr_host, UART_RX);
		if (up->port.ignore_status_mask != NWPSERIAL_STATUS_RXVALID)
			FUNC5(tty, ch, TTY_NORMAL);
	} while (FUNC0(up->dcr_host, UART_LSR) & UART_LSR_DR);

	FUNC4(tty);
	ret = IRQ_HANDLED;

	/* clear interrupt */
	FUNC1(up->dcr_host, UART_IIR, 1);
out:
	FUNC3(&up->port.lock);
	return ret;
}