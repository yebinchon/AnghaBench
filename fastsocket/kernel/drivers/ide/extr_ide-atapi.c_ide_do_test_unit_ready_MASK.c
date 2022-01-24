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
struct ide_atapi_pc {int /*<<< orphan*/ * c; } ;
struct gendisk {int dummy; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  TEST_UNIT_READY ; 
 int /*<<< orphan*/  FUNC0 (struct ide_atapi_pc*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct gendisk*,struct ide_atapi_pc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(ide_drive_t *drive, struct gendisk *disk)
{
	struct ide_atapi_pc pc;

	FUNC0(&pc);
	pc.c[0] = TEST_UNIT_READY;

	return FUNC1(drive, disk, &pc, NULL, 0);
}