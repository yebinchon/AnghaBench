#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uart_port {int /*<<< orphan*/  lock; } ;
struct uart_pmac_port {int* curregs; } ;
struct ktermios {int dummy; } ;

/* Variables and functions */
 int EXT_INT_ENAB ; 
 int INT_ALL_Rx ; 
 size_t R1 ; 
 int RxINT_MASK ; 
 int TxINT_ENAB ; 
 int /*<<< orphan*/  FUNC0 (struct uart_pmac_port*) ; 
 scalar_t__ FUNC1 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,struct ktermios*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_pmac_port* FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_pmac_port*,size_t,int) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port, struct ktermios *termios,
			    struct ktermios *old)
{
	struct uart_pmac_port *uap = FUNC5(port);
	unsigned long flags;

	FUNC3(&port->lock, flags);	

	/* Disable IRQs on the port */
	uap->curregs[R1] &= ~(EXT_INT_ENAB | TxINT_ENAB | RxINT_MASK);
	FUNC6(uap, R1, uap->curregs[R1]);

	/* Setup new port configuration */
	FUNC2(port, termios, old);

	/* Re-enable IRQs on the port */
	if (FUNC1(uap)) {
		uap->curregs[R1] |= INT_ALL_Rx | TxINT_ENAB;
		if (!FUNC0(uap))
			uap->curregs[R1] |= EXT_INT_ENAB;
		FUNC6(uap, R1, uap->curregs[R1]);
	}
	FUNC4(&port->lock, flags);
}