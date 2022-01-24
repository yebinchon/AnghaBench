#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ssb_mipscore {TYPE_1__* dev; } ;
struct TYPE_6__ {int capabilities; scalar_t__ dev; } ;
struct TYPE_7__ {scalar_t__ dev; } ;
struct ssb_bus {int chip_id; TYPE_2__ chipco; TYPE_3__ extif; } ;
struct TYPE_5__ {struct ssb_bus* bus; } ;

/* Variables and functions */
 int SSB_CHIPCO_CAP_PMU ; 
 scalar_t__ SSB_PLLTYPE_5 ; 
 scalar_t__ SSB_PLLTYPE_6 ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

u32 FUNC4(struct ssb_mipscore *mcore)
{
	struct ssb_bus *bus = mcore->dev->bus;
	u32 pll_type, n, m, rate = 0;

	if (bus->chipco.capabilities & SSB_CHIPCO_CAP_PMU)
		return FUNC3(&bus->chipco);

	if (bus->extif.dev) {
		FUNC2(&bus->extif, &pll_type, &n, &m);
	} else if (bus->chipco.dev) {
		FUNC1(&bus->chipco, &pll_type, &n, &m);
	} else
		return 0;

	if ((pll_type == SSB_PLLTYPE_5) || (bus->chip_id == 0x5365)) {
		rate = 200000000;
	} else {
		rate = FUNC0(pll_type, n, m);
	}

	if (pll_type == SSB_PLLTYPE_6) {
		rate *= 2;
	}

	return rate;
}