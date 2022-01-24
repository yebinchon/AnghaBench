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
struct uart_8250_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_FCR ; 
 unsigned char UART_FCR_CLEAR_RCVR ; 
 unsigned char UART_FCR_CLEAR_XMIT ; 
 unsigned char UART_FCR_ENABLE_FIFO ; 
 int /*<<< orphan*/  UART_LCR ; 
 unsigned char UART_LCR_DLAB ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned char UART_LSR_DR ; 
 int /*<<< orphan*/  UART_MCR ; 
 unsigned char UART_MCR_LOOP ; 
 int /*<<< orphan*/  UART_RX ; 
 int /*<<< orphan*/  UART_TX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned short FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*,unsigned short) ; 
 unsigned char FUNC3 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_8250_port*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int FUNC5(struct uart_8250_port *up)
{
	unsigned char old_fcr, old_mcr, old_lcr;
	unsigned short old_dl;
	int count;

	old_lcr = FUNC3(up, UART_LCR);
	FUNC4(up, UART_LCR, 0);
	old_fcr = FUNC3(up, UART_FCR);
	old_mcr = FUNC3(up, UART_MCR);
	FUNC4(up, UART_FCR, UART_FCR_ENABLE_FIFO |
		    UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT);
	FUNC4(up, UART_MCR, UART_MCR_LOOP);
	FUNC4(up, UART_LCR, UART_LCR_DLAB);
	old_dl = FUNC1(up);
	FUNC2(up, 0x0001);
	FUNC4(up, UART_LCR, 0x03);
	for (count = 0; count < 256; count++)
		FUNC4(up, UART_TX, count);
	FUNC0(20);/* FIXME - schedule_timeout */
	for (count = 0; (FUNC3(up, UART_LSR) & UART_LSR_DR) &&
	     (count < 256); count++)
		FUNC3(up, UART_RX);
	FUNC4(up, UART_FCR, old_fcr);
	FUNC4(up, UART_MCR, old_mcr);
	FUNC4(up, UART_LCR, UART_LCR_DLAB);
	FUNC2(up, old_dl);
	FUNC4(up, UART_LCR, old_lcr);

	return count;
}