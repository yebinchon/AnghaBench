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
struct mtip_port {scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ PORT_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct mtip_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtip_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct mtip_port *port)
{
	/* Disable interrupts on this port */
	FUNC2(0, port->mmio + PORT_IRQ_MASK);

	/* Disable the DMA engine */
	FUNC0(port, 0);

	/* Disable FIS reception */
	FUNC1(port, 0);
}