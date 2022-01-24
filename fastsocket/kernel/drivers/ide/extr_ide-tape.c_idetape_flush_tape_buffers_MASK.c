#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ide_tape_obj {int /*<<< orphan*/  disk; } ;
struct ide_atapi_pc {int dummy; } ;
struct TYPE_6__ {struct ide_tape_obj* driver_data; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int HZ ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,struct ide_atapi_pc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct ide_atapi_pc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC3(ide_drive_t *drive)
{
	struct ide_tape_obj *tape = drive->driver_data;
	struct ide_atapi_pc pc;
	int rc;

	FUNC1(drive, &pc, 0);
	rc = FUNC0(drive, tape->disk, &pc, NULL, 0);
	if (rc)
		return rc;
	FUNC2(drive, 60 * 5 * HZ);
	return 0;
}