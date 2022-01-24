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
struct spider_pic {int /*<<< orphan*/  host; scalar_t__ regs; } ;
struct irq_desc {TYPE_1__* chip; struct spider_pic* handler_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* eoi ) (unsigned int) ;} ;

/* Variables and functions */
 unsigned int NO_IRQ ; 
 unsigned int SPIDER_IRQ_INVALID ; 
 scalar_t__ TIR_CS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(unsigned int irq, struct irq_desc *desc)
{
	struct spider_pic *pic = desc->handler_data;
	unsigned int cs, virq;

	cs = FUNC1(pic->regs + TIR_CS) >> 24;
	if (cs == SPIDER_IRQ_INVALID)
		virq = NO_IRQ;
	else
		virq = FUNC2(pic->host, cs);
	if (virq != NO_IRQ)
		FUNC0(virq);
	desc->chip->eoi(irq);
}