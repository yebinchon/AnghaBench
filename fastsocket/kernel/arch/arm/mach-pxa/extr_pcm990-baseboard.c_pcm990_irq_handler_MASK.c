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
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCM990_CTRL_INT_IRQ_GPIO ; 
 unsigned long PCM990_INTSETCLR ; 
 unsigned int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 unsigned long pcm990_irq_enabled ; 

__attribute__((used)) static void FUNC5(unsigned int irq, struct irq_desc *desc)
{
	unsigned long pending = (~PCM990_INTSETCLR) & pcm990_irq_enabled;

	do {
		GEDR(PCM990_CTRL_INT_IRQ_GPIO) =
					FUNC0(PCM990_CTRL_INT_IRQ_GPIO);
		if (FUNC4(pending)) {
			irq = FUNC1(0) + FUNC2(pending);
			FUNC3(irq);
		}
		pending = (~PCM990_INTSETCLR) & pcm990_irq_enabled;
	} while (pending);
}