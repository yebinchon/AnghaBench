#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct acpi_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* methods; } ;
struct TYPE_3__ {scalar_t__ display_set; scalar_t__ brightness_set; scalar_t__ brightness_get; scalar_t__ brightness_down; scalar_t__ brightness_up; scalar_t__ lcd_status; scalar_t__ mt_lcd_switch; scalar_t__ mt_bt_switch; scalar_t__ mt_ledd; scalar_t__ mt_tled; scalar_t__ mt_mled; scalar_t__ mt_wled; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROC_BRN ; 
 int /*<<< orphan*/  PROC_BT ; 
 int /*<<< orphan*/  PROC_DISP ; 
 int /*<<< orphan*/  PROC_INFO ; 
 int /*<<< orphan*/  PROC_LCD ; 
 int /*<<< orphan*/  PROC_LEDD ; 
 int /*<<< orphan*/  PROC_MLED ; 
 int /*<<< orphan*/  PROC_TLED ; 
 int /*<<< orphan*/  PROC_WLED ; 
 scalar_t__ FUNC0 (struct acpi_device*) ; 
 TYPE_2__* hotk ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct acpi_device *device)
{
	if (FUNC0(device)) {
		FUNC1(PROC_INFO, FUNC0(device));
		if (hotk->methods->mt_wled)
			FUNC1(PROC_WLED, FUNC0(device));
		if (hotk->methods->mt_mled)
			FUNC1(PROC_MLED, FUNC0(device));
		if (hotk->methods->mt_tled)
			FUNC1(PROC_TLED, FUNC0(device));
		if (hotk->methods->mt_ledd)
			FUNC1(PROC_LEDD, FUNC0(device));
		if (hotk->methods->mt_bt_switch)
			FUNC1(PROC_BT, FUNC0(device));
		if (hotk->methods->mt_lcd_switch && hotk->methods->lcd_status)
			FUNC1(PROC_LCD, FUNC0(device));
		if ((hotk->methods->brightness_up
		     && hotk->methods->brightness_down)
		    || (hotk->methods->brightness_get
			&& hotk->methods->brightness_set))
			FUNC1(PROC_BRN, FUNC0(device));
		if (hotk->methods->display_set)
			FUNC1(PROC_DISP, FUNC0(device));
	}
	return 0;
}