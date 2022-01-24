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
struct mtip_port {int command_list_dma; int rxfis_dma; scalar_t__ mmio; TYPE_1__* dd; scalar_t__* completed; } ;
struct TYPE_2__ {int slot_groups; scalar_t__ mmio; } ;

/* Variables and functions */
 int DEF_PORT_IRQ ; 
 scalar_t__ HOST_CAP ; 
 int HOST_CAP_64 ; 
 scalar_t__ HOST_IRQ_STAT ; 
 scalar_t__ PORT_FIS_ADDR ; 
 scalar_t__ PORT_FIS_ADDR_HI ; 
 scalar_t__ PORT_IRQ_MASK ; 
 scalar_t__ PORT_IRQ_STAT ; 
 scalar_t__ PORT_LST_ADDR ; 
 scalar_t__ PORT_LST_ADDR_HI ; 
 scalar_t__ PORT_SCR_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct mtip_port*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mtip_port *port)
{
	int i;
	FUNC0(port);

	/* Program the command list base and FIS base addresses */
	if (FUNC1(port->dd->mmio + HOST_CAP) & HOST_CAP_64) {
		FUNC2((port->command_list_dma >> 16) >> 16,
			 port->mmio + PORT_LST_ADDR_HI);
		FUNC2((port->rxfis_dma >> 16) >> 16,
			 port->mmio + PORT_FIS_ADDR_HI);
	}

	FUNC2(port->command_list_dma & 0xFFFFFFFF,
			port->mmio + PORT_LST_ADDR);
	FUNC2(port->rxfis_dma & 0xFFFFFFFF, port->mmio + PORT_FIS_ADDR);

	/* Clear SError */
	FUNC2(FUNC1(port->mmio + PORT_SCR_ERR), port->mmio + PORT_SCR_ERR);

	/* reset the completed registers.*/
	for (i = 0; i < port->dd->slot_groups; i++)
		FUNC2(0xFFFFFFFF, port->completed[i]);

	/* Clear any pending interrupts for this port */
	FUNC2(FUNC1(port->mmio + PORT_IRQ_STAT), port->mmio + PORT_IRQ_STAT);

	/* Clear any pending interrupts on the HBA. */
	FUNC2(FUNC1(port->dd->mmio + HOST_IRQ_STAT),
					port->dd->mmio + HOST_IRQ_STAT);

	/* Enable port interrupts */
	FUNC2(DEF_PORT_IRQ, port->mmio + PORT_IRQ_MASK);
}