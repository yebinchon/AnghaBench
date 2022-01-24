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
struct TYPE_2__ {int /*<<< orphan*/  p_dev; scalar_t__ bt_rfk; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROC_TOSHIBA ; 
 int /*<<< orphan*/  acpi_root_dir ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_1__ toshiba_acpi ; 
 scalar_t__ toshiba_backlight_device ; 
 scalar_t__ toshiba_proc_dir ; 

__attribute__((used)) static void FUNC6(void)
{
	if (toshiba_acpi.bt_rfk) {
		FUNC5(toshiba_acpi.bt_rfk);
		FUNC4(toshiba_acpi.bt_rfk);
	}

	if (toshiba_backlight_device)
		FUNC0(toshiba_backlight_device);

	FUNC2();

	if (toshiba_proc_dir)
		FUNC3(PROC_TOSHIBA, acpi_root_dir);

	FUNC1(toshiba_acpi.p_dev);

	return;
}