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
struct w90p910_keypad {scalar_t__ mmio_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int INTTR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int IS1KEY ; 
 scalar_t__ KPI_STATUS ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct w90p910_keypad*,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	struct w90p910_keypad *keypad = dev_id;
	unsigned int  kstatus, val;

	kstatus = FUNC0(keypad->mmio_base + KPI_STATUS);

	val = INTTR | IS1KEY;

	if (kstatus & val)
		FUNC1(keypad, kstatus);

	return IRQ_HANDLED;
}