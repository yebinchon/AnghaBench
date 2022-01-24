#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pcf50633 {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__**) ; 
 TYPE_2__** gta02_devices_pmu_children ; 
 struct pcf50633* gta02_pcf ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**,int) ; 

__attribute__((used)) static void FUNC2(struct pcf50633 *pcf)
{
	int n;

	/* Grab a copy of the now probed PMU pointer. */
	gta02_pcf = pcf;

	for (n = 0; n < FUNC0(gta02_devices_pmu_children); n++)
		gta02_devices_pmu_children[n]->dev.parent = pcf->dev;

	FUNC1(gta02_devices_pmu_children,
			     FUNC0(gta02_devices_pmu_children));
}