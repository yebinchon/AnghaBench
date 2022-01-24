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
struct macio_chip {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ model_id; } ;

/* Variables and functions */
 long ENODEV ; 
 int KEYLARGO_GPIO_OUTOUT_DATA ; 
 int KEYLARGO_GPIO_OUTPUT_ENABLE ; 
 int /*<<< orphan*/  KL_GPIO_SOUND_POWER ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PMAC_TYPE_PISMO ; 
 scalar_t__ PMAC_TYPE_TITANIUM ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 struct macio_chip* FUNC4 (struct device_node*,int /*<<< orphan*/ ) ; 
 TYPE_1__ pmac_mb ; 

__attribute__((used)) static long
FUNC5(struct device_node *node, long param, long value)
{
	struct macio_chip*	macio;
	unsigned long		flags;

	macio = FUNC4(node, 0);
	if (!macio)
		return -ENODEV;

	/* Do a better probe code, screamer G4 desktops &
	 * iMacs can do that too, add a recalibrate  in
	 * the driver as well
	 */
	if (pmac_mb.model_id == PMAC_TYPE_PISMO ||
	    pmac_mb.model_id == PMAC_TYPE_TITANIUM) {
		FUNC0(flags);
		if (value)
			FUNC2(KL_GPIO_SOUND_POWER,
				KEYLARGO_GPIO_OUTPUT_ENABLE |
				KEYLARGO_GPIO_OUTOUT_DATA);
		else
			FUNC2(KL_GPIO_SOUND_POWER,
				KEYLARGO_GPIO_OUTPUT_ENABLE);
		(void)FUNC1(KL_GPIO_SOUND_POWER);
		FUNC3(flags);
	}
	return 0;
}