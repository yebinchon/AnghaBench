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
typedef  int /*<<< orphan*/  u32 ;
struct zd_chip {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_REG1 ; 
 int /*<<< orphan*/  UNLOCK_PHY_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct zd_chip*) ; 
 int FUNC4 (struct zd_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct zd_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct zd_chip *chip)
{
	int r;
	u32 tmp;

	FUNC0(FUNC2(&chip->mutex));
	r = FUNC4(chip, &tmp, CR_REG1);
	if (r) {
		FUNC1(FUNC3(chip),
			"error ioread32(CR_REG1): %d\n", r);
		return r;
	}

	tmp |= UNLOCK_PHY_REGS;

	r = FUNC5(chip, tmp, CR_REG1);
	if (r)
		FUNC1(FUNC3(chip), "error iowrite32(CR_REG1): %d\n", r);
	return r;
}