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
struct uart_port {int line; int fifosize; int /*<<< orphan*/  irq; } ;
struct msm_port {int imr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_TRIGGER_HIGH ; 
 int /*<<< orphan*/  UART_CR ; 
 int /*<<< orphan*/  UART_IMR ; 
 int UART_IMR_CURRENT_CTS ; 
 int UART_IMR_RXLEV ; 
 int UART_IMR_RXSTALE ; 
 int /*<<< orphan*/  UART_IPR ; 
 unsigned int UART_IPR_RXSTALE_LAST ; 
 unsigned int UART_IPR_STALE_LSB ; 
 int /*<<< orphan*/  UART_MR1 ; 
 unsigned int UART_MR1_AUTO_RFR_LEVEL0 ; 
 unsigned int UART_MR1_AUTO_RFR_LEVEL1 ; 
 struct msm_port* FUNC0 (struct uart_port*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  msm_irq ; 
 unsigned int FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct uart_port *port)
{
	struct msm_port *msm_port = FUNC0(port);
	unsigned int data, rfr_level;
	int ret;

	FUNC7(msm_port->name, sizeof(msm_port->name),
		 "msm_serial%d", port->line);

	ret = FUNC6(port->irq, msm_irq, IRQF_TRIGGER_HIGH,
			  msm_port->name, port);
	if (FUNC8(ret))
		return ret;

	FUNC2(port);

	if (FUNC1(port->fifosize > 12))
		rfr_level = port->fifosize - 12;
	else
		rfr_level = port->fifosize;

	/* set automatic RFR level */
	data = FUNC3(port, UART_MR1);
	data &= ~UART_MR1_AUTO_RFR_LEVEL1;
	data &= ~UART_MR1_AUTO_RFR_LEVEL0;
	data |= UART_MR1_AUTO_RFR_LEVEL1 & (rfr_level << 2);
	data |= UART_MR1_AUTO_RFR_LEVEL0 & rfr_level;
	FUNC5(port, data, UART_MR1);

	/* make sure that RXSTALE count is non-zero */
	data = FUNC3(port, UART_IPR);
	if (FUNC8(!data)) {
		data |= UART_IPR_RXSTALE_LAST;
		data |= UART_IPR_STALE_LSB;
		FUNC5(port, data, UART_IPR);
	}

	FUNC4(port);

	FUNC5(port, 0x05, UART_CR);	/* enable TX & RX */

	/* turn on RX and CTS interrupts */
	msm_port->imr = UART_IMR_RXLEV | UART_IMR_RXSTALE |
			UART_IMR_CURRENT_CTS;
	FUNC5(port, msm_port->imr, UART_IMR);

	return 0;
}