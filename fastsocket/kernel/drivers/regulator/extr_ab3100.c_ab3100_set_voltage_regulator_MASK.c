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
typedef  int u8 ;
struct regulator_dev {int /*<<< orphan*/  dev; struct ab3100_regulator* reg_data; } ;
struct ab3100_regulator {int /*<<< orphan*/  regreg; int /*<<< orphan*/  ab3100; } ;

/* Variables and functions */
 int FUNC0 (struct regulator_dev*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *reg,
					int min_uV, int max_uV)
{
	struct ab3100_regulator *abreg = reg->reg_data;
	u8 regval;
	int err;
	int bestindex;

	bestindex = FUNC0(reg, min_uV, max_uV);
	if (bestindex < 0)
		return bestindex;

	err = FUNC1(abreg->ab3100,
						abreg->regreg, &regval);
	if (err) {
		FUNC3(&reg->dev,
			 "failed to get regulator register %02x\n",
			 abreg->regreg);
		return err;
	}

	/* The highest three bits control the variable regulators */
	regval &= ~0xE0;
	regval |= (bestindex << 5);

	err = FUNC2(abreg->ab3100,
						abreg->regreg, regval);
	if (err)
		FUNC3(&reg->dev, "failed to set regulator register %02x\n",
			abreg->regreg);

	return err;
}