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
struct TYPE_4__ {scalar_t__ line; int /*<<< orphan*/  irq; TYPE_1__* cons; int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; } ;
struct uart_txx9_port {TYPE_2__ port; } ;
struct uart_port {int dummy; } ;
struct TYPE_3__ {scalar_t__ index; } ;

/* Variables and functions */
 int /*<<< orphan*/  TXX9_SIDICR ; 
 int /*<<< orphan*/  TXX9_SIFCR ; 
 int TXX9_SIFCR_FRSTE ; 
 int TXX9_SIFCR_RFRST ; 
 int TXX9_SIFCR_TFRST ; 
 int /*<<< orphan*/  TXX9_SIFLCR ; 
 int TXX9_SIFLCR_RSDE ; 
 int TXX9_SIFLCR_TBRK ; 
 int TXX9_SIFLCR_TSDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct uart_txx9_port*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_txx9_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_txx9_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_txx9_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_txx9_port* FUNC7 (struct uart_port*) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port)
{
	struct uart_txx9_port *up = FUNC7(port);
	unsigned long flags;

	/*
	 * Disable interrupts from this port
	 */
	FUNC3(up, TXX9_SIDICR, 0);	/* disable all intrs */

	FUNC5(&up->port.lock, flags);
	FUNC1(&up->port, up->port.mctrl);
	FUNC6(&up->port.lock, flags);

	/*
	 * Disable break condition
	 */
	FUNC2(up, TXX9_SIFLCR, TXX9_SIFLCR_TBRK);

#ifdef CONFIG_SERIAL_TXX9_CONSOLE
	if (up->port.cons && up->port.line == up->port.cons->index) {
		free_irq(up->port.irq, up);
		return;
	}
#endif
	/* reset FIFOs */
	FUNC4(up, TXX9_SIFCR,
		TXX9_SIFCR_TFRST | TXX9_SIFCR_RFRST | TXX9_SIFCR_FRSTE);
	/* clear reset */
	FUNC2(up, TXX9_SIFCR,
		 TXX9_SIFCR_TFRST | TXX9_SIFCR_RFRST | TXX9_SIFCR_FRSTE);

	/* Disable RX/TX */
	FUNC4(up, TXX9_SIFLCR, TXX9_SIFLCR_RSDE | TXX9_SIFLCR_TSDE);

	FUNC0(up->port.irq, up);
}