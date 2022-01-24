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
struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; } ;
struct imx_port {TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ UCR1 ; 
 unsigned long UCR1_RRDYEN ; 
 unsigned long UCR1_TRDYEN ; 
 unsigned long UCR1_TXMPTYEN ; 
 scalar_t__ UCR4 ; 
 unsigned long UCR4_DREN ; 
 unsigned long UCR4_TCEN ; 
 scalar_t__ FUNC0 (struct imx_port*) ; 
 scalar_t__ UTS ; 
 int UTS_TXEMPTY ; 
 int /*<<< orphan*/  FUNC1 (struct imx_port*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	struct imx_port *sport = (struct imx_port *)port;
	unsigned long temp;

	if (FUNC0(sport)) {
		/* half duplex in IrDA mode; have to disable receive mode */
		temp = FUNC2(sport->port.membase + UCR4);
		temp &= ~(UCR4_DREN);
		FUNC3(temp, sport->port.membase + UCR4);

		temp = FUNC2(sport->port.membase + UCR1);
		temp &= ~(UCR1_RRDYEN);
		FUNC3(temp, sport->port.membase + UCR1);
	}

	temp = FUNC2(sport->port.membase + UCR1);
	FUNC3(temp | UCR1_TXMPTYEN, sport->port.membase + UCR1);

	if (FUNC0(sport)) {
		temp = FUNC2(sport->port.membase + UCR1);
		temp |= UCR1_TRDYEN;
		FUNC3(temp, sport->port.membase + UCR1);

		temp = FUNC2(sport->port.membase + UCR4);
		temp |= UCR4_TCEN;
		FUNC3(temp, sport->port.membase + UCR4);
	}

	if (FUNC2(sport->port.membase + UTS) & UTS_TXEMPTY)
		FUNC1(sport);
}