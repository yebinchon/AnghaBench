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
struct gendisk {int dummy; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct gendisk*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct gendisk*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gendisk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(ide_drive_t *drive, struct gendisk *disk)
{
	int ret = 0;

	if (FUNC1(drive, disk))
		FUNC0(drive, disk, 1);

	ret = FUNC2(drive);

	FUNC4(disk, FUNC3(drive));

	return ret;
}