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
struct zd_chip {int /*<<< orphan*/  mutex; int /*<<< orphan*/  rf; int /*<<< orphan*/  patch_cck_gain; } ;

/* Variables and functions */
 int /*<<< orphan*/  E2P_PHY_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZD_CR47 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct zd_chip*) ; 
 int FUNC4 (struct zd_chip*,int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct zd_chip*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct zd_chip *chip)
{
	int r;
	u32 value;

	if (!chip->patch_cck_gain || !FUNC6(&chip->rf))
		return 0;

	FUNC0(FUNC2(&chip->mutex));
	r = FUNC4(chip, &value, E2P_PHY_REG);
	if (r)
		return r;
	FUNC1(FUNC3(chip), "patching value %x\n", value & 0xff);
	return FUNC5(chip, value & 0xff, ZD_CR47);
}