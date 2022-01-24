#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct TYPE_3__ {scalar_t__ ci_present; } ;
struct TYPE_4__ {int /*<<< orphan*/  msp430_irq_tasklet; } ;
struct budget_ci {int /*<<< orphan*/  ciintf_irq_tasklet; scalar_t__ ci_irq; TYPE_1__ budget; TYPE_2__ ir; } ;

/* Variables and functions */
 int MASK_03 ; 
 int MASK_06 ; 
 int MASK_10 ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct saa7146_dev*,struct budget_ci*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7146_dev*,int*) ; 

__attribute__((used)) static void FUNC3(struct saa7146_dev *dev, u32 * isr)
{
	struct budget_ci *budget_ci = (struct budget_ci *) dev->ext_priv;

	FUNC0(8, "dev: %p, budget_ci: %p\n", dev, budget_ci);

	if (*isr & MASK_06)
		FUNC1(&budget_ci->ir.msp430_irq_tasklet);

	if (*isr & MASK_10)
		FUNC2(dev, isr);

	if ((*isr & MASK_03) && (budget_ci->budget.ci_present) && (budget_ci->ci_irq))
		FUNC1(&budget_ci->ciintf_irq_tasklet);
}