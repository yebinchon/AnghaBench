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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 unsigned int IRQ_TYPE_EDGE_RISING ; 
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 int /*<<< orphan*/  NETX_DPMAS_IF_CONF1 ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(unsigned int _irq, unsigned int type)
{
	unsigned int val, irq;

	val = FUNC2(NETX_DPMAS_IF_CONF1);

	irq = _irq - FUNC1(0);

	if (type & IRQ_TYPE_EDGE_RISING) {
		FUNC0("rising edges\n");
		val |= (1 << 26) << irq;
	}
	if (type & IRQ_TYPE_EDGE_FALLING) {
		FUNC0("falling edges\n");
		val &= ~((1 << 26) << irq);
	}
	if (type & IRQ_TYPE_LEVEL_LOW) {
		FUNC0("low level\n");
		val &= ~((1 << 26) << irq);
	}
	if (type & IRQ_TYPE_LEVEL_HIGH) {
		FUNC0("high level\n");
		val |= (1 << 26) << irq;
	}

	FUNC3(val, NETX_DPMAS_IF_CONF1);

	return 0;
}