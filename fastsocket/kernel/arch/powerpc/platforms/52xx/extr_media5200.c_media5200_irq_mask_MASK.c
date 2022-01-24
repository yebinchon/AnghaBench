#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int hwirq; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ MEDIA5200_IRQ_ENABLE ; 
 int MEDIA5200_IRQ_SHIFT ; 
 int FUNC0 (scalar_t__) ; 
 TYPE_2__* irq_map ; 
 TYPE_1__ media5200_irq ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned int virq)
{
	unsigned long flags;
	u32 val;

	FUNC2(&media5200_irq.lock, flags);
	val = FUNC0(media5200_irq.regs + MEDIA5200_IRQ_ENABLE);
	val &= ~(1 << (MEDIA5200_IRQ_SHIFT + irq_map[virq].hwirq));
	FUNC1(media5200_irq.regs + MEDIA5200_IRQ_ENABLE, val);
	FUNC3(&media5200_irq.lock, flags);
}