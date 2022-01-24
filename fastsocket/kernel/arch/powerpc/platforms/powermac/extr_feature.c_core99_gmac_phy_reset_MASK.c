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
struct macio_chip {scalar_t__ type; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 long ENODEV ; 
 int /*<<< orphan*/  KEYLARGO_GPIO_OUTOUT_DATA ; 
 int /*<<< orphan*/  KEYLARGO_GPIO_OUTPUT_ENABLE ; 
 int /*<<< orphan*/  KL_GPIO_ETH_PHY_RESET ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 struct macio_chip* macio_chips ; 
 scalar_t__ macio_intrepid ; 
 scalar_t__ macio_keylargo ; 
 scalar_t__ macio_pangea ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static long
FUNC5(struct device_node *node, long param, long value)
{
	unsigned long flags;
	struct macio_chip *macio;

	macio = &macio_chips[0];
	if (macio->type != macio_keylargo && macio->type != macio_pangea &&
	    macio->type != macio_intrepid)
		return -ENODEV;

	FUNC0(flags);
	FUNC2(KL_GPIO_ETH_PHY_RESET, KEYLARGO_GPIO_OUTPUT_ENABLE);
	(void)FUNC1(KL_GPIO_ETH_PHY_RESET);
	FUNC3(flags);
	FUNC4(10);
	FUNC0(flags);
	FUNC2(KL_GPIO_ETH_PHY_RESET, /*KEYLARGO_GPIO_OUTPUT_ENABLE | */
		KEYLARGO_GPIO_OUTOUT_DATA);
	FUNC3(flags);
	FUNC4(10);

	return 0;
}