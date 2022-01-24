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
struct hwbutton_interrupt {int /*<<< orphan*/  data; int /*<<< orphan*/  (* handle_lo ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  eirq; int /*<<< orphan*/  (* handle_hi ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned long* CIC_EXT_CFG_REG ; 
 scalar_t__ FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct hwbutton_interrupt *hirq = data;
	unsigned long cic_ext = *CIC_EXT_CFG_REG;

	if (FUNC0(cic_ext, hirq->eirq)) {
		/* Interrupt: pin is now HI */
		FUNC2(cic_ext, hirq->eirq);
		hirq->handle_hi(hirq->data);
	} else {
		/* Interrupt: pin is now LO */
		FUNC1(cic_ext, hirq->eirq);
		hirq->handle_lo(hirq->data);
	}

	/*
	 * Invert the POLARITY of this level interrupt to ack the interrupt
	 * Thus next state change will invoke the opposite message
	 */
	*CIC_EXT_CFG_REG = cic_ext;

	return IRQ_HANDLED;
}