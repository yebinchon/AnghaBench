#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct uart_sc26xx_port {TYPE_1__* port; } ;
struct tty_struct {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  ISR ; 
 int ISR_RXRDYA ; 
 int ISR_RXRDYB ; 
 int ISR_TXRDYA ; 
 int ISR_TXRDYB ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct tty_struct* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct uart_sc26xx_port *up = dev_id;
	struct tty_struct *tty;
	unsigned long flags;
	u8 isr;

	FUNC3(&up->port[0].lock, flags);

	tty = NULL;
	isr = FUNC0(&up->port[0], ISR);
	if (isr & ISR_TXRDYA)
	    FUNC6(&up->port[0]);
	if (isr & ISR_RXRDYA)
	    tty = FUNC1(&up->port[0]);

	FUNC4(&up->port[0].lock);

	if (tty)
		FUNC7(tty);

	FUNC2(&up->port[1].lock);

	tty = NULL;
	if (isr & ISR_TXRDYB)
	    FUNC6(&up->port[1]);
	if (isr & ISR_RXRDYB)
	    tty = FUNC1(&up->port[1]);

	FUNC5(&up->port[1].lock, flags);

	if (tty)
		FUNC7(tty);

	return IRQ_HANDLED;
}