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
struct imx_port {int trcv_delay; TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ UCR1 ; 
 unsigned long UCR1_RRDYEN ; 
 unsigned long UCR1_TRDYEN ; 
 unsigned long UCR1_TXMPTYEN ; 
 scalar_t__ UCR4 ; 
 unsigned long UCR4_DREN ; 
 unsigned long UCR4_TCEN ; 
 scalar_t__ URXD0 ; 
 int URXD_CHARRDY ; 
 scalar_t__ FUNC0 (struct imx_port*) ; 
 scalar_t__ USR2 ; 
 int USR2_TXDC ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct imx_port *sport = (struct imx_port *)port;
	unsigned long temp;

	if (FUNC0(sport)) {
		/* half duplex - wait for end of transmission */
		int n = 256;
		while ((--n > 0) &&
		      !(FUNC2(sport->port.membase + USR2) & USR2_TXDC)) {
			FUNC3(5);
			FUNC1();
		}
		/*
		 * irda transceiver - wait a bit more to avoid
		 * cutoff, hardware dependent
		 */
		FUNC3(sport->trcv_delay);

		/*
		 * half duplex - reactivate receive mode,
		 * flush receive pipe echo crap
		 */
		if (FUNC2(sport->port.membase + USR2) & USR2_TXDC) {
			temp = FUNC2(sport->port.membase + UCR1);
			temp &= ~(UCR1_TXMPTYEN | UCR1_TRDYEN);
			FUNC4(temp, sport->port.membase + UCR1);

			temp = FUNC2(sport->port.membase + UCR4);
			temp &= ~(UCR4_TCEN);
			FUNC4(temp, sport->port.membase + UCR4);

			while (FUNC2(sport->port.membase + URXD0) &
			       URXD_CHARRDY)
				FUNC1();

			temp = FUNC2(sport->port.membase + UCR1);
			temp |= UCR1_RRDYEN;
			FUNC4(temp, sport->port.membase + UCR1);

			temp = FUNC2(sport->port.membase + UCR4);
			temp |= UCR4_DREN;
			FUNC4(temp, sport->port.membase + UCR4);
		}
		return;
	}

	temp = FUNC2(sport->port.membase + UCR1);
	FUNC4(temp & ~UCR1_TXMPTYEN, sport->port.membase + UCR1);
}