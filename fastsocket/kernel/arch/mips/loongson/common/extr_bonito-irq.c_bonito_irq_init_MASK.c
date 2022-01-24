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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ BONITO_IRQ_BASE ; 
 int /*<<< orphan*/  bonito_irq_type ; 
 int /*<<< orphan*/  dma_timeout_irqaction ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC2(void)
{
	u32 i;

	for (i = BONITO_IRQ_BASE; i < BONITO_IRQ_BASE + 32; i++)
		FUNC0(i, &bonito_irq_type, handle_level_irq);

	FUNC1(BONITO_IRQ_BASE + 10, &dma_timeout_irqaction);
}