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
typedef  int u8 ;
struct uart_port {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  mpc52xx_psc_ipcr; } ;
struct TYPE_3__ {scalar_t__ (* tx_rdy ) (struct uart_port*) ;int /*<<< orphan*/  (* tx_clr_irq ) (struct uart_port*) ;scalar_t__ (* rx_rdy ) (struct uart_port*) ;int /*<<< orphan*/  (* rx_clr_irq ) (struct uart_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned long ISR_PASS_LIMIT ; 
 int MPC52xx_PSC_CTS ; 
 int MPC52xx_PSC_DCD ; 
 int MPC52xx_PSC_D_CTS ; 
 int MPC52xx_PSC_D_DCD ; 
 TYPE_2__* FUNC0 (struct uart_port*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (struct uart_port*) ; 
 unsigned int FUNC3 (struct uart_port*) ; 
 TYPE_1__* psc_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 
 scalar_t__ FUNC7 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*) ; 
 scalar_t__ FUNC9 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_port*,int) ; 

__attribute__((used)) static irqreturn_t
FUNC12(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	unsigned long pass = ISR_PASS_LIMIT;
	unsigned int keepgoing;
	u8 status;

	FUNC4(&port->lock);

	/* While we have stuff to do, we continue */
	do {
		/* If we don't find anything to do, we stop */
		keepgoing = 0;

		psc_ops->rx_clr_irq(port);
		if (psc_ops->rx_rdy(port))
			keepgoing |= FUNC2(port);

		psc_ops->tx_clr_irq(port);
		if (psc_ops->tx_rdy(port))
			keepgoing |= FUNC3(port);

		status = FUNC1(&FUNC0(port)->mpc52xx_psc_ipcr);
		if (status & MPC52xx_PSC_D_DCD)
			FUNC11(port, !(status & MPC52xx_PSC_DCD));

		if (status & MPC52xx_PSC_D_CTS)
			FUNC10(port, !(status & MPC52xx_PSC_CTS));

		/* Limit number of iteration */
		if (!(--pass))
			keepgoing = 0;

	} while (keepgoing);

	FUNC5(&port->lock);

	return IRQ_HANDLED;
}