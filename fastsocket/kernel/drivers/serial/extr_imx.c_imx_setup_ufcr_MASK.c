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
struct TYPE_2__ {int uartclk; scalar_t__ membase; } ;
struct imx_port {TYPE_1__ port; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int RXTL ; 
 int TXTL ; 
 scalar_t__ UFCR ; 
 unsigned int FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct imx_port *sport, unsigned int mode)
{
	unsigned int val;
	unsigned int ufcr_rfdiv;

	/* set receiver / transmitter trigger level.
	 * RFDIV is set such way to satisfy requested uartclk value
	 */
	val = TXTL << 10 | RXTL;
	ufcr_rfdiv = (FUNC1(sport->clk) + sport->port.uartclk / 2)
			/ sport->port.uartclk;

	if(!ufcr_rfdiv)
		ufcr_rfdiv = 1;

	val |= FUNC0(ufcr_rfdiv);

	FUNC2(val, sport->port.membase + UFCR);

	return 0;
}