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
struct irq_desc {TYPE_1__* chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* eoi ) (unsigned int) ;} ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3(unsigned int irq, struct irq_desc *desc)
{
	int cascade_irq;

	while ((cascade_irq = FUNC0()) >= 0)
		FUNC1(cascade_irq);

	desc->chip->eoi(irq);
}