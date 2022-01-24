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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct omap_device_pm_latency {scalar_t__ activate_lat; int deactivate_lat; int /*<<< orphan*/  (* deactivate_func ) (struct omap_device*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct omap_device {scalar_t__ pm_lat_level; scalar_t__ pm_lats_cnt; scalar_t__ dev_wakeup_lat; scalar_t__ _dev_wakeup_lat_limit; TYPE_1__ pdev; struct omap_device_pm_latency* pm_lats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_device*) ; 

__attribute__((used)) static int FUNC4(struct omap_device *od, u8 ignore_lat)
{
	u32 a, b;

	FUNC2("omap_device: %s: deactivating\n", od->pdev.name);

	while (od->pm_lat_level < od->pm_lats_cnt) {
		struct omap_device_pm_latency *odpl;
		int deact_lat = 0;

		odpl = od->pm_lats + od->pm_lat_level;

		if (!ignore_lat &&
		    ((od->dev_wakeup_lat + odpl->activate_lat) >
		     od->_dev_wakeup_lat_limit))
			break;

		a = FUNC1();

		/* XXX check return code */
		odpl->deactivate_func(od);

		b = FUNC1();

		deact_lat = (b - a) >> 15; /* 32KiHz cycles to microseconds */

		FUNC2("omap_device: %s: pm_lat %d: deactivate: elapsed time "
			 "%d usec\n", od->pdev.name, od->pm_lat_level,
			 deact_lat);

		FUNC0(deact_lat > odpl->deactivate_lat, "omap_device: %s.%d: "
		     "deactivate step %d took longer than expected (%d > %d)\n",
		     od->pdev.name, od->pdev.id, od->pm_lat_level,
		     deact_lat, odpl->deactivate_lat);

		od->dev_wakeup_lat += odpl->activate_lat;

		od->pm_lat_level++;
	}

	return 0;
}