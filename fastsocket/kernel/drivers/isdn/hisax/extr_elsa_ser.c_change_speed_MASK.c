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
struct TYPE_3__ {unsigned int IER; } ;
struct TYPE_4__ {TYPE_1__ elsa; } ;
struct IsdnCardState {TYPE_2__ hw; } ;

/* Variables and functions */
 int BASE_BAUD ; 
 int /*<<< orphan*/  UART_DLL ; 
 int /*<<< orphan*/  UART_DLM ; 
 int /*<<< orphan*/  UART_FCR ; 
 unsigned int UART_FCR_ENABLE_FIFO ; 
 unsigned int UART_FCR_TRIGGER_1 ; 
 unsigned int UART_FCR_TRIGGER_8 ; 
 int /*<<< orphan*/  UART_IER ; 
 unsigned int UART_IER_MSI ; 
 int /*<<< orphan*/  UART_LCR ; 
 unsigned int UART_LCR_DLAB ; 
 int /*<<< orphan*/  UART_RX ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct IsdnCardState *cs, int baud)
{
	int	quot = 0, baud_base;
	unsigned cval, fcr = 0;
	int	bits;


	/* byte size and parity */
	cval = 0x03; bits = 10;
	/* Determine divisor based on baud rate */
	baud_base = BASE_BAUD;
	quot = baud_base / baud;
	/* If the quotient is ever zero, default to 9600 bps */
	if (!quot)
		quot = baud_base / 9600;

	/* Set up FIFO's */
	if ((baud_base / quot) < 2400)
		fcr = UART_FCR_ENABLE_FIFO | UART_FCR_TRIGGER_1;
	else
		fcr = UART_FCR_ENABLE_FIFO | UART_FCR_TRIGGER_8;
	FUNC2(cs, UART_FCR, fcr);
	/* CTS flow control flag and modem status interrupts */
	cs->hw.elsa.IER &= ~UART_IER_MSI;
	cs->hw.elsa.IER |= UART_IER_MSI;
	FUNC2(cs, UART_IER, cs->hw.elsa.IER);

	FUNC0(cs,"modem quot=0x%x", quot);
	FUNC2(cs, UART_LCR, cval | UART_LCR_DLAB);/* set DLAB */
	FUNC2(cs, UART_DLL, quot & 0xff);		/* LS of divisor */
	FUNC2(cs, UART_DLM, quot >> 8);		/* MS of divisor */
	FUNC2(cs, UART_LCR, cval);		/* reset DLAB */
	FUNC1(cs, UART_RX);
}