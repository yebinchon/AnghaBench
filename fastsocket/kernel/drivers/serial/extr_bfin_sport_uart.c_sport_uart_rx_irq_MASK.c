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
struct TYPE_8__ {TYPE_3__ icount; TYPE_2__* state; } ;
struct sport_uart_port {TYPE_4__ port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_5__ {struct tty_struct* tty; } ;
struct TYPE_6__ {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RXNE ; 
 int FUNC0 (struct sport_uart_port*) ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 unsigned int FUNC1 (struct sport_uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_4__*,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct sport_uart_port *up = dev_id;
	struct tty_struct *tty = up->port.state->port.tty;
	unsigned int ch;

	do {
		ch = FUNC1(up);
		up->port.icount.rx++;

		if (FUNC4(&up->port, ch))
			;
		else
			FUNC3(tty, ch, TTY_NORMAL);
	} while (FUNC0(up) & RXNE);
	FUNC2(tty);

	return IRQ_HANDLED;
}