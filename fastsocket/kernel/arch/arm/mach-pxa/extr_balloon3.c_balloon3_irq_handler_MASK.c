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
struct TYPE_2__ {int /*<<< orphan*/  (* ack ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BALLOON3_AUX_NIRQ ; 
 int /*<<< orphan*/  BALLOON3_INT_CONTROL_REG ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long balloon3_irq_enabled ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(unsigned int irq, struct irq_desc *desc)
{
	unsigned long pending = FUNC2(BALLOON3_INT_CONTROL_REG) &
					balloon3_irq_enabled;

	do {
		/* clear useless edge notification */
		if (desc->chip->ack)
			desc->chip->ack(BALLOON3_AUX_NIRQ);
		while (pending) {
			irq = FUNC0(0) + FUNC1(pending);
			FUNC3(irq);
			pending &= pending - 1;
		}
		pending = FUNC2(BALLOON3_INT_CONTROL_REG) &
				balloon3_irq_enabled;
	} while (pending);
}