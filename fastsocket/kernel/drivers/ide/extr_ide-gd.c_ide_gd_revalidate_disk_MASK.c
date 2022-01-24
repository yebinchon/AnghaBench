#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ide_disk_obj {TYPE_2__* drive; } ;
struct gendisk {int dummy; } ;
struct TYPE_6__ {TYPE_1__* disk_ops; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_capacity ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ide_disk_obj ; 
 struct ide_disk_obj* FUNC0 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC3 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(struct gendisk *disk)
{
	struct ide_disk_obj *idkp = FUNC0(disk, ide_disk_obj);
	ide_drive_t *drive = idkp->drive;

	if (FUNC2(disk))
		drive->disk_ops->get_capacity(drive);

	FUNC3(disk, FUNC1(drive));
	return 0;
}