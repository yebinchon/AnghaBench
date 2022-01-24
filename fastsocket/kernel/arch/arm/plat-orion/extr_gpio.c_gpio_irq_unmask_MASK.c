#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_2__ {int status; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int IRQ_TYPE_EDGE_FALLING ; 
 int IRQ_TYPE_EDGE_RISING ; 
 int IRQ_TYPE_SENSE_MASK ; 
 TYPE_1__* irq_desc ; 
 int FUNC2 (size_t) ; 
 size_t FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t,size_t) ; 

__attribute__((used)) static void FUNC5(u32 irq)
{
	int pin = FUNC2(irq);
	int type = irq_desc[irq].status & IRQ_TYPE_SENSE_MASK;
	u32 reg = (type & (IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING)) ?
		FUNC0(pin) : FUNC1(pin);
	u32 u = FUNC3(reg);
	u |= 1 << (pin & 31);
	FUNC4(u, reg);
}