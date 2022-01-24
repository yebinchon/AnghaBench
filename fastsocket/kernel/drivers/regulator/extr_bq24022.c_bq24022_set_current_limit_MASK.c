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
struct regulator_dev {int dummy; } ;
struct bq24022_mach_info {int /*<<< orphan*/  gpio_iset2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev*) ; 
 struct bq24022_mach_info* FUNC3 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev,
					int min_uA, int max_uA)
{
	struct bq24022_mach_info *pdata = FUNC3(rdev);

	FUNC0(FUNC2(rdev), "setting current limit to %s mA\n",
		max_uA >= 500000 ? "500" : "100");

	/* REVISIT: maybe return error if min_uA != 0 ? */
	FUNC1(pdata->gpio_iset2, max_uA >= 500000);
	return 0;
}