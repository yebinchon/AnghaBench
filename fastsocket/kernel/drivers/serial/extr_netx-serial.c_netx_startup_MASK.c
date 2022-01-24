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
struct uart_port {scalar_t__ membase; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CR_MSIE ; 
 int CR_RIE ; 
 int CR_RTIE ; 
 int CR_TIE ; 
 int CR_UART_EN ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int LINE_CR_FEN ; 
 scalar_t__ UART_CR ; 
 scalar_t__ UART_LINE_CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netx_int ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct uart_port *port)
{
	int ret;

	ret = FUNC2(port->irq, netx_int, 0,
			     DRIVER_NAME, port);
	if (ret) {
		FUNC0(port->dev, "unable to grab irq%d\n",port->irq);
		goto exit;
	}

	FUNC3(FUNC1(port->membase + UART_LINE_CR) | LINE_CR_FEN,
		port->membase + UART_LINE_CR);

	FUNC3(CR_MSIE | CR_RIE | CR_TIE | CR_RTIE | CR_UART_EN,
		port->membase + UART_CR);

exit:
	return ret;
}