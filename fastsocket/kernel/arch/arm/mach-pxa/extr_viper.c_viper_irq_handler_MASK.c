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
struct irq_desc {int dummy; } ;
typedef  int /*<<< orphan*/  GEDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIPER_CPLD_GPIO ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 () ; 

__attribute__((used)) static void FUNC6(unsigned int irq, struct irq_desc *desc)
{
	unsigned long pending;

	pending = FUNC5();
	do {
		/* we're in a chained irq handler,
		 * so ack the interrupt by hand */
		GEDR(VIPER_CPLD_GPIO) = FUNC0(VIPER_CPLD_GPIO);

		if (FUNC3(pending)) {
			irq = FUNC4(FUNC1(pending));
			FUNC2(irq);
		}
		pending = FUNC5();
	} while (pending);
}