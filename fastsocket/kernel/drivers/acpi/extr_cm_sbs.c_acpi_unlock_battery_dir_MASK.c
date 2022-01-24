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
struct proc_dir_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BATTERY_CLASS ; 
 int /*<<< orphan*/ * acpi_battery_dir ; 
 int /*<<< orphan*/  acpi_root_dir ; 
 int /*<<< orphan*/  cm_sbs_mutex ; 
 scalar_t__ lock_battery_dir_cnt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct proc_dir_entry *acpi_battery_dir_param)
{
	FUNC0(&cm_sbs_mutex);
	if (acpi_battery_dir_param)
		lock_battery_dir_cnt--;
	if (lock_battery_dir_cnt == 0 && acpi_battery_dir_param
	    && acpi_battery_dir) {
		FUNC2(ACPI_BATTERY_CLASS, acpi_root_dir);
		acpi_battery_dir = NULL;
	}
	FUNC1(&cm_sbs_mutex);
	return;
}