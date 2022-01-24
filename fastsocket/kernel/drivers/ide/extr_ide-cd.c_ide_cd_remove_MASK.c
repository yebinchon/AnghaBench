#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cdrom_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  disk; int /*<<< orphan*/  driver; } ;
struct TYPE_4__ {struct cdrom_info* driver_data; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  IDE_DBG_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idecd_ref_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(ide_drive_t *drive)
{
	struct cdrom_info *info = drive->driver_data;

	FUNC2(IDE_DBG_FUNC, "enter");

	FUNC3(drive, info->driver);
	FUNC1(&info->dev);
	FUNC0(info->disk);

	FUNC4(&idecd_ref_mutex);
	FUNC6(&info->dev);
	FUNC5(&idecd_ref_mutex);
}