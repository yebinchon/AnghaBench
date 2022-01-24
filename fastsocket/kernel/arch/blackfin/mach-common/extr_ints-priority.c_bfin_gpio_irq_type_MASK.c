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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 unsigned int IRQ_TYPE_EDGE_RISING ; 
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 unsigned int IRQ_TYPE_PROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpio_enabled ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,unsigned int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(unsigned int irq, unsigned int type)
{
	int ret;
	char buf[16];
	u32 gpionr = FUNC5(irq);

	if (type == IRQ_TYPE_PROBE) {
		/* only probe unenabled GPIO interrupt lines */
		if (FUNC13(gpionr, gpio_enabled))
			return 0;
		type = IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING;
	}

	if (type & (IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING |
		    IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_LEVEL_LOW)) {

		FUNC12(buf, 16, "gpio-irq%d", irq);
		ret = FUNC3(gpionr, buf);
		if (ret)
			return ret;

		if (FUNC1(gpionr, gpio_enabled))
			FUNC2(gpionr);

	} else {
		FUNC0(gpionr, gpio_enabled);
		return 0;
	}

	FUNC10(gpionr, 0);
	FUNC8(gpionr, 0);

	if ((type & (IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING))
	    == (IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING))
		FUNC6(gpionr, 1);
	else
		FUNC6(gpionr, 0);

	if ((type & (IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_LEVEL_LOW)))
		FUNC11(gpionr, 1);	/* low or falling edge denoted by one */
	else
		FUNC11(gpionr, 0);	/* high or rising edge denoted by zero */

	if (type & (IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING)) {
		FUNC9(gpionr, 1);
		FUNC10(gpionr, 1);
		FUNC7(gpionr, 0);

	} else {
		FUNC9(gpionr, 0);
		FUNC10(gpionr, 1);
	}

	if (type & (IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING))
		FUNC4(irq, handle_edge_irq);
	else
		FUNC4(irq, handle_level_irq);

	return 0;
}