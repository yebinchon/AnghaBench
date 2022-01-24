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
struct TYPE_2__ {int /*<<< orphan*/ * external_power_changed; int /*<<< orphan*/  get_property; int /*<<< orphan*/  num_properties; int /*<<< orphan*/  properties; int /*<<< orphan*/  type; } ;
struct bq27x00_device_info {TYPE_1__ bat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWER_SUPPLY_TYPE_BATTERY ; 
 int /*<<< orphan*/  bq27x00_battery_get_property ; 
 int /*<<< orphan*/  bq27x00_battery_props ; 

__attribute__((used)) static void FUNC1(struct bq27x00_device_info *di)
{
	di->bat.type = POWER_SUPPLY_TYPE_BATTERY;
	di->bat.properties = bq27x00_battery_props;
	di->bat.num_properties = FUNC0(bq27x00_battery_props);
	di->bat.get_property = bq27x00_battery_get_property;
	di->bat.external_power_changed = NULL;
}