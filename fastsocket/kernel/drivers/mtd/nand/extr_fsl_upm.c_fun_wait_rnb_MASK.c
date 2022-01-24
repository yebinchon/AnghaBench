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
struct fsl_upm_nand {scalar_t__* rnb_gpio; size_t mchip_number; int /*<<< orphan*/  dev; int /*<<< orphan*/  mtd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct fsl_upm_nand *fun)
{
	if (fun->rnb_gpio[fun->mchip_number] >= 0) {
		int cnt = 1000000;

		while (--cnt && !FUNC2(&fun->mtd))
			FUNC0();
		if (!cnt)
			FUNC1(fun->dev, "tired waiting for RNB\n");
	} else {
		FUNC3(100);
	}
}