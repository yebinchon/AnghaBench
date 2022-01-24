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
struct TYPE_2__ {int /*<<< orphan*/  bits; } ;
struct pnp_irq {int flags; TYPE_1__ map; } ;
typedef  int /*<<< orphan*/  pnp_info_buffer_t ;

/* Variables and functions */
 int IORESOURCE_IRQ_HIGHEDGE ; 
 int IORESOURCE_IRQ_HIGHLEVEL ; 
 int IORESOURCE_IRQ_LOWEDGE ; 
 int IORESOURCE_IRQ_LOWLEVEL ; 
 int IORESOURCE_IRQ_OPTIONAL ; 
 int PNP_IRQ_NR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(pnp_info_buffer_t * buffer, char *space,
			  struct pnp_irq *irq)
{
	int first = 1, i;

	FUNC1(buffer, "%sirq ", space);
	for (i = 0; i < PNP_IRQ_NR; i++)
		if (FUNC2(i, irq->map.bits)) {
			if (!first) {
				FUNC1(buffer, ",");
			} else {
				first = 0;
			}
			if (i == 2 || i == 9)
				FUNC1(buffer, "2/9");
			else
				FUNC1(buffer, "%i", i);
		}
	if (FUNC0(irq->map.bits, PNP_IRQ_NR))
		FUNC1(buffer, "<none>");
	if (irq->flags & IORESOURCE_IRQ_HIGHEDGE)
		FUNC1(buffer, " High-Edge");
	if (irq->flags & IORESOURCE_IRQ_LOWEDGE)
		FUNC1(buffer, " Low-Edge");
	if (irq->flags & IORESOURCE_IRQ_HIGHLEVEL)
		FUNC1(buffer, " High-Level");
	if (irq->flags & IORESOURCE_IRQ_LOWLEVEL)
		FUNC1(buffer, " Low-Level");
	if (irq->flags & IORESOURCE_IRQ_OPTIONAL)
		FUNC1(buffer, " (optional)");
	FUNC1(buffer, "\n");
}