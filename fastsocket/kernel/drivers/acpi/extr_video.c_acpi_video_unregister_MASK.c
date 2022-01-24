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

/* Variables and functions */
 int /*<<< orphan*/  ACPI_VIDEO_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acpi_root_dir ; 
 int /*<<< orphan*/  acpi_video_bus ; 
 scalar_t__ register_count ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	if (!register_count) {
		/*
		 * If the acpi video bus is already unloaded, don't
		 * unload it again and return directly.
		 */
		return;
	}
	FUNC0(&acpi_video_bus);

	FUNC1(ACPI_VIDEO_CLASS, acpi_root_dir);

	register_count = 0;

	return;
}