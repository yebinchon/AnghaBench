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
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int IRQF_NOAUTOEN ; 
 int IRQF_VALID ; 
 int /*<<< orphan*/  KS8695_IRQ_UART_LINE_STATUS ; 
 int /*<<< orphan*/  KS8695_IRQ_UART_MODEM_STATUS ; 
 int /*<<< orphan*/  KS8695_IRQ_UART_RX ; 
 int /*<<< orphan*/  KS8695_IRQ_UART_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  ks8695uart_modem_status ; 
 int /*<<< orphan*/  ks8695uart_rx_chars ; 
 int /*<<< orphan*/  ks8695uart_tx_chars ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct uart_port *port)
{
	int retval;

	FUNC4(KS8695_IRQ_UART_TX, IRQF_VALID | IRQF_NOAUTOEN);
	FUNC5(port, 0);
	FUNC3(port, 1);
	FUNC1(port, 1);

	/*
	 * Allocate the IRQ
	 */
	retval = FUNC2(KS8695_IRQ_UART_TX, ks8695uart_tx_chars, IRQF_DISABLED, "UART TX", port);
	if (retval)
		goto err_tx;

	retval = FUNC2(KS8695_IRQ_UART_RX, ks8695uart_rx_chars, IRQF_DISABLED, "UART RX", port);
	if (retval)
		goto err_rx;

	retval = FUNC2(KS8695_IRQ_UART_LINE_STATUS, ks8695uart_rx_chars, IRQF_DISABLED, "UART LineStatus", port);
	if (retval)
		goto err_ls;

	retval = FUNC2(KS8695_IRQ_UART_MODEM_STATUS, ks8695uart_modem_status, IRQF_DISABLED, "UART ModemStatus", port);
	if (retval)
		goto err_ms;

	return 0;

err_ms:
	FUNC0(KS8695_IRQ_UART_LINE_STATUS, port);
err_ls:
	FUNC0(KS8695_IRQ_UART_RX, port);
err_rx:
	FUNC0(KS8695_IRQ_UART_TX, port);
err_tx:
	return retval;
}