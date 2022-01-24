#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct irq_host {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;
struct TYPE_6__ {int /*<<< orphan*/  status; } ;
struct TYPE_5__ {int /*<<< orphan*/  hwirq; } ;
struct TYPE_4__ {scalar_t__ (* map ) (struct irq_host*,unsigned int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NOREQUEST ; 
 TYPE_3__* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 TYPE_2__* irq_map ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct irq_host*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct irq_host *host, unsigned int virq,
			    irq_hw_number_t hwirq)
{
	/* Clear IRQ_NOREQUEST flag */
	FUNC0(virq)->status &= ~IRQ_NOREQUEST;

	/* map it */
	FUNC4();
	irq_map[virq].hwirq = hwirq;
	FUNC3();

	if (host->ops->map(host, virq, hwirq)) {
		FUNC2("irq: -> mapping failed, freeing\n");
		FUNC1(virq, 1);
		return -1;
	}

	return 0;
}