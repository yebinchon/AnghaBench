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
typedef  int uint16_t ;
struct irq_desc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  INTASSIGN0 ; 
 int /*<<< orphan*/  INTASSIGN1 ; 
 int INTASSIGN_MASK ; 
 unsigned int FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct irq_desc* irq_desc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char* sysint1_assign ; 

__attribute__((used)) static inline int FUNC5(unsigned int irq, unsigned char assign)
{
	struct irq_desc *desc = irq_desc + irq;
	uint16_t intassign0, intassign1;
	unsigned int pin;

	pin = FUNC0(irq);

	FUNC3(&desc->lock);

	intassign0 = FUNC1(INTASSIGN0);
	intassign1 = FUNC1(INTASSIGN1);

	switch (pin) {
	case 0:
		intassign0 &= ~INTASSIGN_MASK;
		intassign0 |= (uint16_t)assign;
		break;
	case 1:
		intassign0 &= ~(INTASSIGN_MASK << 3);
		intassign0 |= (uint16_t)assign << 3;
		break;
	case 2:
		intassign0 &= ~(INTASSIGN_MASK << 6);
		intassign0 |= (uint16_t)assign << 6;
		break;
	case 3:
		intassign0 &= ~(INTASSIGN_MASK << 9);
		intassign0 |= (uint16_t)assign << 9;
		break;
	case 8:
		intassign0 &= ~(INTASSIGN_MASK << 12);
		intassign0 |= (uint16_t)assign << 12;
		break;
	case 9:
		intassign1 &= ~INTASSIGN_MASK;
		intassign1 |= (uint16_t)assign;
		break;
	case 11:
		intassign1 &= ~(INTASSIGN_MASK << 6);
		intassign1 |= (uint16_t)assign << 6;
		break;
	case 12:
		intassign1 &= ~(INTASSIGN_MASK << 9);
		intassign1 |= (uint16_t)assign << 9;
		break;
	default:
		FUNC4(&desc->lock);
		return -EINVAL;
	}

	sysint1_assign[pin] = assign;
	FUNC2(INTASSIGN0, intassign0);
	FUNC2(INTASSIGN1, intassign1);

	FUNC4(&desc->lock);

	return 0;
}