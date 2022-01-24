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
typedef  scalar_t__ irq_level_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIUINTALSELH ; 
 int /*<<< orphan*/  GIUINTALSELL ; 
 int /*<<< orphan*/  GIUINTSTATH ; 
 int /*<<< orphan*/  GIUINTSTATL ; 
 unsigned int GIUINT_HIGH_MAX ; 
 unsigned int GIUINT_HIGH_OFFSET ; 
 scalar_t__ IRQ_LEVEL_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(unsigned int pin, irq_level_t level)
{
	u16 mask;

	if (pin < GIUINT_HIGH_OFFSET) {
		mask = 1 << pin;
		if (level == IRQ_LEVEL_HIGH)
			FUNC1(GIUINTALSELL, mask);
		else
			FUNC0(GIUINTALSELL, mask);
		FUNC2(GIUINTSTATL, mask);
	} else if (pin < GIUINT_HIGH_MAX) {
		mask = 1 << (pin - GIUINT_HIGH_OFFSET);
		if (level == IRQ_LEVEL_HIGH)
			FUNC1(GIUINTALSELH, mask);
		else
			FUNC0(GIUINTALSELH, mask);
		FUNC2(GIUINTSTATH, mask);
	}
}