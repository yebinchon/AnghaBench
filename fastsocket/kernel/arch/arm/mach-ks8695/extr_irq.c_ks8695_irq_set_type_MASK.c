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
 int EINVAL ; 
 unsigned long IOPC_IOEINT0TM ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long IOPC_IOEINT1TM ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long IOPC_IOEINT2TM ; 
 unsigned long FUNC2 (unsigned long) ; 
 unsigned long IOPC_IOEINT3TM ; 
 unsigned long FUNC3 (unsigned long) ; 
 unsigned long IOPC_TM_EDGE ; 
 unsigned long IOPC_TM_FALLING ; 
 unsigned long IOPC_TM_HIGH ; 
 unsigned long IOPC_TM_LOW ; 
 unsigned long IOPC_TM_RISING ; 
#define  IRQ_TYPE_EDGE_BOTH 136 
#define  IRQ_TYPE_EDGE_FALLING 135 
#define  IRQ_TYPE_EDGE_RISING 134 
#define  IRQ_TYPE_LEVEL_HIGH 133 
#define  IRQ_TYPE_LEVEL_LOW 132 
 scalar_t__ KS8695_GPIO_VA ; 
 scalar_t__ KS8695_IOPC ; 
#define  KS8695_IRQ_EXTERN0 131 
#define  KS8695_IRQ_EXTERN1 130 
#define  KS8695_IRQ_EXTERN2 129 
#define  KS8695_IRQ_EXTERN3 128 
 unsigned long FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  ks8695_irq_edge_chip ; 
 int /*<<< orphan*/  ks8695_irq_level_chip ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(unsigned int irqno, unsigned int type)
{
	unsigned long ctrl, mode;
	unsigned short level_triggered = 0;

	ctrl = FUNC4(KS8695_GPIO_VA + KS8695_IOPC);

	switch (type) {
		case IRQ_TYPE_LEVEL_HIGH:
			mode = IOPC_TM_HIGH;
			level_triggered = 1;
			break;
		case IRQ_TYPE_LEVEL_LOW:
			mode = IOPC_TM_LOW;
			level_triggered = 1;
			break;
		case IRQ_TYPE_EDGE_RISING:
			mode = IOPC_TM_RISING;
			break;
		case IRQ_TYPE_EDGE_FALLING:
			mode = IOPC_TM_FALLING;
			break;
		case IRQ_TYPE_EDGE_BOTH:
			mode = IOPC_TM_EDGE;
			break;
		default:
			return -EINVAL;
	}

	switch (irqno) {
		case KS8695_IRQ_EXTERN0:
			ctrl &= ~IOPC_IOEINT0TM;
			ctrl |= FUNC0(mode);
			break;
		case KS8695_IRQ_EXTERN1:
			ctrl &= ~IOPC_IOEINT1TM;
			ctrl |= FUNC1(mode);
			break;
		case KS8695_IRQ_EXTERN2:
			ctrl &= ~IOPC_IOEINT2TM;
			ctrl |= FUNC2(mode);
			break;
		case KS8695_IRQ_EXTERN3:
			ctrl &= ~IOPC_IOEINT3TM;
			ctrl |= FUNC3(mode);
			break;
		default:
			return -EINVAL;
	}

	if (level_triggered) {
		FUNC6(irqno, &ks8695_irq_level_chip);
		FUNC7(irqno, handle_level_irq);
	}
	else {
		FUNC6(irqno, &ks8695_irq_edge_chip);
		FUNC7(irqno, handle_edge_irq);
	}

	FUNC5(ctrl, KS8695_GPIO_VA + KS8695_IOPC);
	return 0;
}