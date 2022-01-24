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
struct ide_atapi_pc {int* c; } ;
struct gendisk {int dummy; } ;
struct TYPE_4__ {int dev_flags; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int ALLOW_MEDIUM_REMOVAL ; 
 int IDE_DFLAG_DOORLOCKING ; 
 int /*<<< orphan*/  FUNC0 (struct ide_atapi_pc*) ; 
 int FUNC1 (TYPE_1__*,struct gendisk*,struct ide_atapi_pc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(ide_drive_t *drive, struct gendisk *disk, int on)
{
	struct ide_atapi_pc pc;

	if ((drive->dev_flags & IDE_DFLAG_DOORLOCKING) == 0)
		return 0;

	FUNC0(&pc);
	pc.c[0] = ALLOW_MEDIUM_REMOVAL;
	pc.c[4] = on;

	return FUNC1(drive, disk, &pc, NULL, 0);
}