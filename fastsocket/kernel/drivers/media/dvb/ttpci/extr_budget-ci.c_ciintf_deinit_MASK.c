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
struct saa7146_dev {int dummy; } ;
struct TYPE_2__ {struct saa7146_dev* dev; } ;
struct budget_ci {int /*<<< orphan*/  ca; TYPE_1__ budget; int /*<<< orphan*/  ciintf_irq_tasklet; scalar_t__ ci_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CICONTROL_RESET ; 
 int /*<<< orphan*/  DEBIADDR_CICONTROL ; 
 int /*<<< orphan*/  DEBICICTL ; 
 int /*<<< orphan*/  MASK_03 ; 
 int /*<<< orphan*/  MASK_27 ; 
 int /*<<< orphan*/  MC1 ; 
 int /*<<< orphan*/  SAA7146_GPIO_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7146_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct budget_ci *budget_ci)
{
	struct saa7146_dev *saa = budget_ci->budget.dev;

	// disable CI interrupts
	if (budget_ci->ci_irq) {
		FUNC0(saa, MASK_03);
		FUNC3(saa, 0, SAA7146_GPIO_INPUT);
		FUNC5(&budget_ci->ciintf_irq_tasklet);
	}

	// reset interface
	FUNC6(&budget_ci->budget, DEBICICTL, DEBIADDR_CICONTROL, 1, 0, 1, 0);
	FUNC2(1);
	FUNC6(&budget_ci->budget, DEBICICTL, DEBIADDR_CICONTROL, 1,
			       CICONTROL_RESET, 1, 0);

	// disable TS data stream to CI interface
	FUNC3(saa, 1, SAA7146_GPIO_INPUT);

	// release the CA device
	FUNC1(&budget_ci->ca);

	// disable DEBI pins
	FUNC4(saa, MC1, MASK_27);
}