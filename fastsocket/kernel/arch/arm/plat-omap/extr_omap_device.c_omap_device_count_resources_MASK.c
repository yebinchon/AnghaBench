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
struct omap_hwmod {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct omap_device {int hwmods_cnt; TYPE_1__ pdev; struct omap_hwmod** hwmods; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct omap_hwmod*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 

int FUNC2(struct omap_device *od)
{
	struct omap_hwmod *oh;
	int c = 0;
	int i;

	for (i = 0, oh = *od->hwmods; i < od->hwmods_cnt; i++, oh++)
		c += FUNC0(oh);

	FUNC1("omap_device: %s: counted %d total resources across %d "
		 "hwmods\n", od->pdev.name, c, od->hwmods_cnt);

	return c;
}