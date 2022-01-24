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
typedef  int u8 ;
struct regulator_dev {int /*<<< orphan*/  dev; struct ab3100_regulator* reg_data; } ;
struct ab3100_regulator {scalar_t__ regreg; int /*<<< orphan*/  ab3100; TYPE_1__* plfdata; } ;
struct TYPE_2__ {int* reg_initvals; } ;

/* Variables and functions */
 scalar_t__ AB3100_LDO_D ; 
 int AB3100_REG_ON_MASK ; 
 int FUNC0 (scalar_t__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 scalar_t__* ab3100_reg_init_order ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *reg)
{
	struct ab3100_regulator *abreg = reg->reg_data;
	int err;
	u8 regval;

	/*
	 * LDO D is a special regulator. When it is disabled, the entire
	 * system is shut down. So this is handled specially.
	 */
	if (abreg->regreg == AB3100_LDO_D) {
		int i;

		FUNC4(&reg->dev, "disabling LDO D - shut down system\n");
		/*
		 * Set regulators to default values, ignore any errors,
		 * we're going DOWN
		 */
		for (i = 0; i < FUNC0(ab3100_reg_init_order); i++) {
			(void) FUNC2(abreg->ab3100,
					ab3100_reg_init_order[i],
					abreg->plfdata->reg_initvals[i]);
		}

		/* Setting LDO D to 0x00 cuts the power to the SoC */
		return FUNC2(abreg->ab3100,
							 AB3100_LDO_D, 0x00U);

	}

	/*
	 * All other regulators are handled here
	 */
	err = FUNC1(abreg->ab3100, abreg->regreg,
						&regval);
	if (err) {
		FUNC3(&reg->dev, "unable to get register 0x%x\n",
			abreg->regreg);
		return err;
	}
	regval &= ~AB3100_REG_ON_MASK;
	return FUNC2(abreg->ab3100, abreg->regreg,
						 regval);
}