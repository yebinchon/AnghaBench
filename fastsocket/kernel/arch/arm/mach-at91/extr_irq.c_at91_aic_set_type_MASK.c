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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int AT91_AIC_SRCTYPE ; 
 unsigned int AT91_AIC_SRCTYPE_FALLING ; 
 unsigned int AT91_AIC_SRCTYPE_HIGH ; 
 unsigned int AT91_AIC_SRCTYPE_LOW ; 
 unsigned int AT91_AIC_SRCTYPE_RISING ; 
 unsigned int AT91_ID_FIQ ; 
 int EINVAL ; 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static int FUNC4(unsigned irq, unsigned type)
{
	unsigned int smr, srctype;

	switch (type) {
	case IRQ_TYPE_LEVEL_HIGH:
		srctype = AT91_AIC_SRCTYPE_HIGH;
		break;
	case IRQ_TYPE_EDGE_RISING:
		srctype = AT91_AIC_SRCTYPE_RISING;
		break;
	case IRQ_TYPE_LEVEL_LOW:
		if ((irq == AT91_ID_FIQ) || FUNC3(irq))		/* only supported on external interrupts */
			srctype = AT91_AIC_SRCTYPE_LOW;
		else
			return -EINVAL;
		break;
	case IRQ_TYPE_EDGE_FALLING:
		if ((irq == AT91_ID_FIQ) || FUNC3(irq))		/* only supported on external interrupts */
			srctype = AT91_AIC_SRCTYPE_FALLING;
		else
			return -EINVAL;
		break;
	default:
		return -EINVAL;
	}

	smr = FUNC1(FUNC0(irq)) & ~AT91_AIC_SRCTYPE;
	FUNC2(FUNC0(irq), smr | srctype);
	return 0;
}