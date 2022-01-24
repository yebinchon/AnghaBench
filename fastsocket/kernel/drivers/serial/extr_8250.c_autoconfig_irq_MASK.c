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
struct TYPE_2__ {int flags; int iobase; int irq; } ;
struct uart_8250_port {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_IIR ; 
 int /*<<< orphan*/  UART_LSR ; 
 int /*<<< orphan*/  UART_MCR ; 
 unsigned char UART_MCR_DTR ; 
 unsigned char UART_MCR_OUT1 ; 
 unsigned char UART_MCR_OUT2 ; 
 unsigned char UART_MCR_RTS ; 
 int /*<<< orphan*/  UART_MSR ; 
 int /*<<< orphan*/  UART_RX ; 
 int /*<<< orphan*/  UART_TX ; 
 int UPF_FOURPORT ; 
 unsigned char FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,unsigned int) ; 
 int FUNC2 (unsigned long) ; 
 unsigned long FUNC3 () ; 
 unsigned char FUNC4 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_8250_port*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct uart_8250_port *up)
{
	unsigned char save_mcr, save_ier;
	unsigned char save_ICP = 0;
	unsigned int ICP = 0;
	unsigned long irqs;
	int irq;

	if (up->port.flags & UPF_FOURPORT) {
		ICP = (up->port.iobase & 0xfe0) | 0x1f;
		save_ICP = FUNC0(ICP);
		FUNC1(0x80, ICP);
		(void) FUNC0(ICP);
	}

	/* forget possible initially masked and pending IRQ */
	FUNC2(FUNC3());
	save_mcr = FUNC4(up, UART_MCR);
	save_ier = FUNC4(up, UART_IER);
	FUNC5(up, UART_MCR, UART_MCR_OUT1 | UART_MCR_OUT2);

	irqs = FUNC3();
	FUNC5(up, UART_MCR, 0);
	FUNC6(10);
	if (up->port.flags & UPF_FOURPORT) {
		FUNC5(up, UART_MCR,
			    UART_MCR_DTR | UART_MCR_RTS);
	} else {
		FUNC5(up, UART_MCR,
			    UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2);
	}
	FUNC5(up, UART_IER, 0x0f);	/* enable all intrs */
	(void)FUNC4(up, UART_LSR);
	(void)FUNC4(up, UART_RX);
	(void)FUNC4(up, UART_IIR);
	(void)FUNC4(up, UART_MSR);
	FUNC5(up, UART_TX, 0xFF);
	FUNC6(20);
	irq = FUNC2(irqs);

	FUNC5(up, UART_MCR, save_mcr);
	FUNC5(up, UART_IER, save_ier);

	if (up->port.flags & UPF_FOURPORT)
		FUNC1(save_ICP, ICP);

	up->port.irq = (irq > 0) ? irq : 0;
}