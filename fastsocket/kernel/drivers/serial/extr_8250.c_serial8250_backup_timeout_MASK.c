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
struct TYPE_4__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  irq; scalar_t__ x_char; TYPE_1__* state; int /*<<< orphan*/  lock; } ;
struct uart_8250_port {unsigned int lsr_saved_flags; int ier; TYPE_2__ port; int /*<<< orphan*/  timer; } ;
struct TYPE_3__ {int /*<<< orphan*/  xmit; } ;

/* Variables and functions */
 int HZ ; 
 unsigned int LSR_SAVE_FLAGS ; 
 int /*<<< orphan*/  UART_IER ; 
 int UART_IER_THRI ; 
 int /*<<< orphan*/  UART_IIR ; 
 unsigned int UART_IIR_ID ; 
 unsigned int UART_IIR_NO_INT ; 
 unsigned int UART_IIR_THRI ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned int UART_LSR_THRE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*) ; 
 unsigned int FUNC4 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_8250_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(unsigned long data)
{
	struct uart_8250_port *up = (struct uart_8250_port *)data;
	unsigned int iir, ier = 0, lsr;
	unsigned long flags;

	/*
	 * Must disable interrupts or else we risk racing with the interrupt
	 * based handler.
	 */
	if (FUNC0(up->port.irq)) {
		ier = FUNC4(up, UART_IER);
		FUNC5(up, UART_IER, 0);
	}

	iir = FUNC4(up, UART_IIR);

	/*
	 * This should be a safe test for anyone who doesn't trust the
	 * IIR bits on their UART, but it's specifically designed for
	 * the "Diva" UART used on the management processor on many HP
	 * ia64 and parisc boxes.
	 */
	FUNC6(&up->port.lock, flags);
	lsr = FUNC4(up, UART_LSR);
	up->lsr_saved_flags |= lsr & LSR_SAVE_FLAGS;
	FUNC7(&up->port.lock, flags);
	if ((iir & UART_IIR_NO_INT) && (up->ier & UART_IER_THRI) &&
	    (!FUNC8(&up->port.state->xmit) || up->port.x_char) &&
	    (lsr & UART_LSR_THRE)) {
		iir &= ~(UART_IIR_ID | UART_IIR_NO_INT);
		iir |= UART_IIR_THRI;
	}

	if (!(iir & UART_IIR_NO_INT))
		FUNC3(up);

	if (FUNC0(up->port.irq))
		FUNC5(up, UART_IER, ier);

	/* Standard timer interval plus 0.2s to keep the port running */
	FUNC1(&up->timer,
		jiffies + FUNC2(up->port.timeout) + HZ / 5);
}