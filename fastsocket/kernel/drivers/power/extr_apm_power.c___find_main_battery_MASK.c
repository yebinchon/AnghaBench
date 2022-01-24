#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ intval; } ;
struct find_bat_param {scalar_t__ max_charge; scalar_t__ max_energy; TYPE_3__ full; TYPE_1__* bat; TYPE_1__* max_energy_bat; TYPE_1__* max_charge_bat; TYPE_1__* main; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ use_for_apm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHARGE_FULL ; 
 int /*<<< orphan*/  CHARGE_FULL_DESIGN ; 
 int /*<<< orphan*/  ENERGY_FULL ; 
 int /*<<< orphan*/  ENERGY_FULL_DESIGN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_1__* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, void *data)
{
	struct find_bat_param *bp = (struct find_bat_param *)data;

	bp->bat = FUNC1(dev);

	if (bp->bat->use_for_apm) {
		/* nice, we explicitly asked to report this battery. */
		bp->main = bp->bat;
		return 1;
	}

	if (!FUNC0(bp->bat, CHARGE_FULL_DESIGN, &bp->full) ||
			!FUNC0(bp->bat, CHARGE_FULL, &bp->full)) {
		if (bp->full.intval > bp->max_charge) {
			bp->max_charge_bat = bp->bat;
			bp->max_charge = bp->full.intval;
		}
	} else if (!FUNC0(bp->bat, ENERGY_FULL_DESIGN, &bp->full) ||
			!FUNC0(bp->bat, ENERGY_FULL, &bp->full)) {
		if (bp->full.intval > bp->max_energy) {
			bp->max_energy_bat = bp->bat;
			bp->max_energy = bp->full.intval;
		}
	}
	return 0;
}