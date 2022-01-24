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
struct pmx {int activated; int /*<<< orphan*/  setting; TYPE_1__* onmask; int /*<<< orphan*/ * dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int mask; } ;

/* Variables and functions */
 int FUNC0 (struct pmx**) ; 
 int EINVAL ; 
 int EUSERS ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmx_mutex ; 
 struct pmx** pmx_registers ; 
 struct pmx** pmx_settings ; 
 int /*<<< orphan*/  FUNC5 (struct pmx*,int) ; 

int FUNC6(struct device *dev, struct pmx *pmx)
{
	int i, j, ret;
	ret = 0;

	if (pmx == NULL || dev == NULL)
		return -EINVAL;

	FUNC3(&pmx_mutex);

	/* Make sure the required bits are not used */
	for (i = 0; i < FUNC0(pmx_settings); i++) {

		if (pmx_settings[i]->dev == NULL || pmx_settings[i] == pmx)
			continue;

		for (j = 0; j < FUNC0(pmx_registers); j++) {

			if (pmx_settings[i]->onmask[j].mask & pmx->
				onmask[j].mask) {
				/* More than one entry on the same bits */
				FUNC1(1, "padmux: cannot activate "
					"setting. Bit conflict with "
					"an active setting\n");

				ret = -EUSERS;
				goto exit;
			}
		}
	}
	FUNC5(pmx, true);
	pmx->activated = true;
	FUNC2(dev, "padmux: setting nr %d is activated\n",
		pmx->setting);

exit:
	FUNC4(&pmx_mutex);
	return ret;
}