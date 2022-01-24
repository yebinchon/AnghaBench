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
typedef  int u32 ;
struct mtip_port {scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ PORT_CMD ; 
 int PORT_CMD_START ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct mtip_port *port, int enable)
{
	u32 tmp;

	/* enable FIS reception */
	tmp = FUNC0(port->mmio + PORT_CMD);
	if (enable)
		FUNC1(tmp | PORT_CMD_START, port->mmio + PORT_CMD);
	else
		FUNC1(tmp & ~PORT_CMD_START, port->mmio + PORT_CMD);

	FUNC0(port->mmio + PORT_CMD);
	return (((tmp & PORT_CMD_START) == PORT_CMD_START));
}