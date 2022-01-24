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
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct TYPE_2__ {scalar_t__ dvb_frontend; scalar_t__ ci_present; struct saa7146_dev* dev; } ;
struct budget_ci {TYPE_1__ budget; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAA7146_GPIO_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct budget_ci*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct budget_ci*) ; 
 int /*<<< orphan*/  FUNC4 (struct budget_ci*) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7146_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct saa7146_dev *dev)
{
	struct budget_ci *budget_ci = (struct budget_ci *) dev->ext_priv;
	struct saa7146_dev *saa = budget_ci->budget.dev;
	int err;

	if (budget_ci->budget.ci_present)
		FUNC0(budget_ci);
	FUNC4(budget_ci);
	if (budget_ci->budget.dvb_frontend) {
		FUNC2(budget_ci->budget.dvb_frontend);
		FUNC1(budget_ci->budget.dvb_frontend);
	}
	err = FUNC6(&budget_ci->budget);

	// disable frontend and CI interface
	FUNC5(saa, 2, SAA7146_GPIO_INPUT);

	FUNC3(budget_ci);

	return err;
}