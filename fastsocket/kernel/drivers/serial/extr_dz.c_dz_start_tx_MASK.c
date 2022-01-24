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
typedef  int u16 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int line; } ;
struct dz_port {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  DZ_TCR ; 
 int FUNC0 (struct dz_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dz_port*,int /*<<< orphan*/ ,int) ; 
 struct dz_port* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *uport)
{
	struct dz_port *dport = FUNC2(uport);
	u16 tmp, mask = 1 << dport->port.line;

	tmp = FUNC0(dport, DZ_TCR);	/* read the TX flag */
	tmp |= mask;			/* set the TX flag */
	FUNC1(dport, DZ_TCR, tmp);
}