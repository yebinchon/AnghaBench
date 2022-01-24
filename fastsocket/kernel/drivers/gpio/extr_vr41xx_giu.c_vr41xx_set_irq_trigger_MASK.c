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
typedef  int u16 ;
typedef  int irq_trigger_t ;
typedef  scalar_t__ irq_signal_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIUFEDGEINHH ; 
 int /*<<< orphan*/  GIUFEDGEINHL ; 
 int /*<<< orphan*/  GIUINTHTSELH ; 
 int /*<<< orphan*/  GIUINTHTSELL ; 
 int /*<<< orphan*/  GIUINTSTATH ; 
 int /*<<< orphan*/  GIUINTSTATL ; 
 int /*<<< orphan*/  GIUINTTYPH ; 
 int /*<<< orphan*/  GIUINTTYPL ; 
 unsigned int GIUINT_HIGH_MAX ; 
 unsigned int GIUINT_HIGH_OFFSET ; 
 int /*<<< orphan*/  GIUREDGEINHH ; 
 int /*<<< orphan*/  GIUREDGEINHL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int GPIO_HAS_INTERRUPT_EDGE_SELECT ; 
 scalar_t__ IRQ_SIGNAL_HOLD ; 
#define  IRQ_TRIGGER_EDGE_FALLING 129 
#define  IRQ_TRIGGER_EDGE_RISING 128 
 int IRQ_TRIGGER_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int giu_flags ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  giuint_high_irq_chip ; 
 int /*<<< orphan*/  giuint_low_irq_chip ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(unsigned int pin, irq_trigger_t trigger,
			    irq_signal_t signal)
{
	u16 mask;

	if (pin < GIUINT_HIGH_OFFSET) {
		mask = 1 << pin;
		if (trigger != IRQ_TRIGGER_LEVEL) {
			FUNC2(GIUINTTYPL, mask);
			if (signal == IRQ_SIGNAL_HOLD)
				FUNC2(GIUINTHTSELL, mask);
			else
				FUNC1(GIUINTHTSELL, mask);
			if (giu_flags & GPIO_HAS_INTERRUPT_EDGE_SELECT) {
				switch (trigger) {
				case IRQ_TRIGGER_EDGE_FALLING:
					FUNC2(GIUFEDGEINHL, mask);
					FUNC1(GIUREDGEINHL, mask);
					break;
				case IRQ_TRIGGER_EDGE_RISING:
					FUNC1(GIUFEDGEINHL, mask);
					FUNC2(GIUREDGEINHL, mask);
					break;
				default:
					FUNC2(GIUFEDGEINHL, mask);
					FUNC2(GIUREDGEINHL, mask);
					break;
				}
			}
			FUNC4(FUNC0(pin),
						 &giuint_low_irq_chip,
						 handle_edge_irq);
		} else {
			FUNC1(GIUINTTYPL, mask);
			FUNC1(GIUINTHTSELL, mask);
			FUNC4(FUNC0(pin),
						 &giuint_low_irq_chip,
						 handle_level_irq);
		}
		FUNC3(GIUINTSTATL, mask);
	} else if (pin < GIUINT_HIGH_MAX) {
		mask = 1 << (pin - GIUINT_HIGH_OFFSET);
		if (trigger != IRQ_TRIGGER_LEVEL) {
			FUNC2(GIUINTTYPH, mask);
			if (signal == IRQ_SIGNAL_HOLD)
				FUNC2(GIUINTHTSELH, mask);
			else
				FUNC1(GIUINTHTSELH, mask);
			if (giu_flags & GPIO_HAS_INTERRUPT_EDGE_SELECT) {
				switch (trigger) {
				case IRQ_TRIGGER_EDGE_FALLING:
					FUNC2(GIUFEDGEINHH, mask);
					FUNC1(GIUREDGEINHH, mask);
					break;
				case IRQ_TRIGGER_EDGE_RISING:
					FUNC1(GIUFEDGEINHH, mask);
					FUNC2(GIUREDGEINHH, mask);
					break;
				default:
					FUNC2(GIUFEDGEINHH, mask);
					FUNC2(GIUREDGEINHH, mask);
					break;
				}
			}
			FUNC4(FUNC0(pin),
						 &giuint_high_irq_chip,
						 handle_edge_irq);
		} else {
			FUNC1(GIUINTTYPH, mask);
			FUNC1(GIUINTHTSELH, mask);
			FUNC4(FUNC0(pin),
						 &giuint_high_irq_chip,
						 handle_level_irq);
		}
		FUNC3(GIUINTSTATH, mask);
	}
}