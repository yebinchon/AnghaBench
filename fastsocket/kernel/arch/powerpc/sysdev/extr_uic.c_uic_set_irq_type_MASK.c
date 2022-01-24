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
typedef  int u32 ;
struct uic {int /*<<< orphan*/  lock; scalar_t__ dcrbase; } ;
struct irq_desc {unsigned int status; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IRQ_LEVEL ; 
#define  IRQ_TYPE_EDGE_FALLING 132 
#define  IRQ_TYPE_EDGE_RISING 131 
#define  IRQ_TYPE_LEVEL_HIGH 130 
#define  IRQ_TYPE_LEVEL_LOW 129 
#define  IRQ_TYPE_NONE 128 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 scalar_t__ UIC_PR ; 
 scalar_t__ UIC_TR ; 
 struct uic* FUNC0 (unsigned int) ; 
 struct irq_desc* FUNC1 (unsigned int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 

__attribute__((used)) static int FUNC8(unsigned int virq, unsigned int flow_type)
{
	struct uic *uic = FUNC0(virq);
	unsigned int src = FUNC6(virq);
	struct irq_desc *desc = FUNC1(virq);
	unsigned long flags;
	int trigger, polarity;
	u32 tr, pr, mask;

	switch (flow_type & IRQ_TYPE_SENSE_MASK) {
	case IRQ_TYPE_NONE:
		FUNC7(virq);
		return 0;

	case IRQ_TYPE_EDGE_RISING:
		trigger = 1; polarity = 1;
		break;
	case IRQ_TYPE_EDGE_FALLING:
		trigger = 1; polarity = 0;
		break;
	case IRQ_TYPE_LEVEL_HIGH:
		trigger = 0; polarity = 1;
		break;
	case IRQ_TYPE_LEVEL_LOW:
		trigger = 0; polarity = 0;
		break;
	default:
		return -EINVAL;
	}

	mask = ~(1 << (31 - src));

	FUNC4(&uic->lock, flags);
	tr = FUNC2(uic->dcrbase + UIC_TR);
	pr = FUNC2(uic->dcrbase + UIC_PR);
	tr = (tr & mask) | (trigger << (31-src));
	pr = (pr & mask) | (polarity << (31-src));

	FUNC3(uic->dcrbase + UIC_PR, pr);
	FUNC3(uic->dcrbase + UIC_TR, tr);

	desc->status &= ~(IRQ_TYPE_SENSE_MASK | IRQ_LEVEL);
	desc->status |= flow_type & IRQ_TYPE_SENSE_MASK;
	if (!trigger)
		desc->status |= IRQ_LEVEL;

	FUNC5(&uic->lock, flags);

	return 0;
}