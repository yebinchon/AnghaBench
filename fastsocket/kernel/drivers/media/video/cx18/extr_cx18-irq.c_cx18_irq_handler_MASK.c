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
struct cx18 {int sw1_irq_mask; int sw2_irq_mask; int hw2_irq_mask; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  HW2_INT_CLR_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  SW1_INT_STATUS ; 
 int /*<<< orphan*/  SW2_INT_STATUS ; 
 int FUNC1 (struct cx18*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cx18*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cx18*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cx18*,int) ; 

irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct cx18 *cx = (struct cx18 *)dev_id;
	u32 sw1, sw2, hw2;

	sw1 = FUNC1(cx, SW1_INT_STATUS) & cx->sw1_irq_mask;
	sw2 = FUNC1(cx, SW2_INT_STATUS) & cx->sw2_irq_mask;
	hw2 = FUNC1(cx, HW2_INT_CLR_STATUS) & cx->hw2_irq_mask;

	if (sw1)
		FUNC2(cx, sw1, SW1_INT_STATUS, ~sw1, sw1);
	if (sw2)
		FUNC2(cx, sw2, SW2_INT_STATUS, ~sw2, sw2);
	if (hw2)
		FUNC2(cx, hw2, HW2_INT_CLR_STATUS, ~hw2, hw2);

	if (sw1 || sw2 || hw2)
		FUNC0("received interrupts "
				  "SW1: %x  SW2: %x  HW2: %x\n", sw1, sw2, hw2);

	/*
	 * SW1 responses have to happen first.  The sending XPU times out the
	 * incoming mailboxes on us rather rapidly.
	 */
	if (sw1)
		FUNC3(cx, sw1);

	/* To do: interrupt-based I2C handling
	if (hw2 & (HW2_I2C1_INT|HW2_I2C2_INT)) {
	}
	*/

	if (sw2)
		FUNC4(cx, sw2);

	return (sw1 || sw2 || hw2) ? IRQ_HANDLED : IRQ_NONE;
}