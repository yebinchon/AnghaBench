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
struct request_sense {int dummy; } ;
struct cdrom_device_info {int /*<<< orphan*/ * handle; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,struct request_sense*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct request_sense*) ; 

int FUNC2(struct cdrom_device_info *cdi, int position)
{
	ide_drive_t *drive = cdi->handle;
	struct request_sense sense;

	if (position) {
		int stat = FUNC1(drive, 0, &sense);

		if (stat)
			return stat;
	}

	return FUNC0(drive, !position, &sense);
}