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
typedef  int u16 ;
struct zd_chip {int /*<<< orphan*/  patch_cr157; } ;

/* Variables and functions */
 int /*<<< orphan*/  E2P_PHY_REG ; 
 int /*<<< orphan*/  ZD_CR157 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct zd_chip*) ; 
 int FUNC2 (struct zd_chip*,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct zd_chip*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct zd_chip *chip)
{
	int r;
	u16 value;

	if (!chip->patch_cr157)
		return 0;

	r = FUNC2(chip, &value, E2P_PHY_REG);
	if (r)
		return r;

	FUNC0(FUNC1(chip), "patching value %x\n", value >> 8);
	return FUNC3(chip, value >> 8, ZD_CR157);
}