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
typedef  int /*<<< orphan*/  u32 ;
struct sge {int /*<<< orphan*/  intrtimer_nres; int /*<<< orphan*/  fixed_intrtimer; TYPE_1__* freelQ; struct adapter* adapter; } ;
struct adapter {scalar_t__ regs; } ;
struct TYPE_2__ {int credits; int size; } ;

/* Variables and functions */
 scalar_t__ A_SG_INTRTIMER ; 
 scalar_t__ A_SG_INT_ENABLE ; 
 int F_FL0_ENABLE ; 
 int F_FL1_ENABLE ; 
 int /*<<< orphan*/  F_FL_EXHAUSTED ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sge*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct sge *sge)
{
	struct adapter *adapter = sge->adapter;
	u32 irq_reg = FUNC1(adapter->regs + A_SG_INT_ENABLE);
	u32 irqholdoff_reg;

	FUNC2(sge, &sge->freelQ[0]);
	FUNC2(sge, &sge->freelQ[1]);

	if (sge->freelQ[0].credits > (sge->freelQ[0].size >> 2) &&
	    sge->freelQ[1].credits > (sge->freelQ[1].size >> 2)) {
		irq_reg |= F_FL_EXHAUSTED;
		irqholdoff_reg = sge->fixed_intrtimer;
	} else {
		/* Clear the F_FL_EXHAUSTED interrupts for now */
		irq_reg &= ~F_FL_EXHAUSTED;
		irqholdoff_reg = sge->intrtimer_nres;
	}
	FUNC3(irqholdoff_reg, adapter->regs + A_SG_INTRTIMER);
	FUNC3(irq_reg, adapter->regs + A_SG_INT_ENABLE);

	/* We reenable the Qs to force a freelist GTS interrupt later */
	FUNC0(adapter, F_FL0_ENABLE | F_FL1_ENABLE);
}