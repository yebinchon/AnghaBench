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
typedef  int /*<<< orphan*/  uint32_t ;
struct sh_flctl {int dummy; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CE0_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct sh_flctl*) ; 
 struct sh_flctl* FUNC2 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mtd_info *mtd, int chipnr)
{
	struct sh_flctl *flctl = FUNC2(mtd);
	uint32_t flcmncr_val = FUNC3(FUNC1(flctl));

	switch (chipnr) {
	case -1:
		flcmncr_val &= ~CE0_ENABLE;
		FUNC4(flcmncr_val, FUNC1(flctl));
		break;
	case 0:
		flcmncr_val |= CE0_ENABLE;
		FUNC4(flcmncr_val, FUNC1(flctl));
		break;
	default:
		FUNC0();
	}
}