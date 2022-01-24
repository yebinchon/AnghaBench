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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; int /*<<< orphan*/  irq; } ;
struct uart_txx9_port {TYPE_1__ port; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  TXX9_SIDICR ; 
 int TXX9_SIDICR_RIE ; 
 int /*<<< orphan*/  TXX9_SIDISR ; 
 int /*<<< orphan*/  TXX9_SIFCR ; 
 int TXX9_SIFCR_FRSTE ; 
 int TXX9_SIFCR_RFRST ; 
 int TXX9_SIFCR_TFRST ; 
 int /*<<< orphan*/  TXX9_SIFLCR ; 
 int TXX9_SIFLCR_RSDE ; 
 int TXX9_SIFLCR_TSDE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct uart_txx9_port*) ; 
 int /*<<< orphan*/  serial_txx9_interrupt ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_txx9_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_txx9_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_txx9_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_txx9_port* FUNC7 (struct uart_port*) ; 

__attribute__((used)) static int FUNC8(struct uart_port *port)
{
	struct uart_txx9_port *up = FUNC7(port);
	unsigned long flags;
	int retval;

	/*
	 * Clear the FIFO buffers and disable them.
	 * (they will be reenabled in set_termios())
	 */
	FUNC4(up, TXX9_SIFCR,
		TXX9_SIFCR_TFRST | TXX9_SIFCR_RFRST | TXX9_SIFCR_FRSTE);
	/* clear reset */
	FUNC2(up, TXX9_SIFCR,
		 TXX9_SIFCR_TFRST | TXX9_SIFCR_RFRST | TXX9_SIFCR_FRSTE);
	FUNC3(up, TXX9_SIDICR, 0);

	/*
	 * Clear the interrupt registers.
	 */
	FUNC3(up, TXX9_SIDISR, 0);

	retval = FUNC0(up->port.irq, serial_txx9_interrupt,
			     IRQF_SHARED, "serial_txx9", up);
	if (retval)
		return retval;

	/*
	 * Now, initialize the UART
	 */
	FUNC5(&up->port.lock, flags);
	FUNC1(&up->port, up->port.mctrl);
	FUNC6(&up->port.lock, flags);

	/* Enable RX/TX */
	FUNC2(up, TXX9_SIFLCR, TXX9_SIFLCR_RSDE | TXX9_SIFLCR_TSDE);

	/*
	 * Finally, enable interrupts.
	 */
	FUNC4(up, TXX9_SIDICR, TXX9_SIDICR_RIE);

	return 0;
}