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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int dev_flags; scalar_t__ media; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EOVERFLOW ; 
 int IDE_DFLAG_NO_UNLOAD ; 
 int IDE_DFLAG_PARKED ; 
 long MAX_PARK_TIMEOUT ; 
 scalar_t__ ide_disk ; 
 int /*<<< orphan*/  ide_setting_mtx ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int,long*) ; 
 TYPE_1__* FUNC5 (struct device*) ; 

ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
		       const char *buf, size_t len)
{
#define MAX_PARK_TIMEOUT 30000
	ide_drive_t *drive = FUNC5(dev);
	long int input;
	int rc;

	rc = FUNC4(buf, 10, &input);
	if (rc || input < -2)
		return -EINVAL;
	if (input > MAX_PARK_TIMEOUT) {
		input = MAX_PARK_TIMEOUT;
		rc = -EOVERFLOW;
	}

	FUNC2(&ide_setting_mtx);
	if (input >= 0) {
		if (drive->dev_flags & IDE_DFLAG_NO_UNLOAD)
			rc = -EOPNOTSUPP;
		else if (input || drive->dev_flags & IDE_DFLAG_PARKED)
			FUNC0(drive, FUNC1(input));
	} else {
		if (drive->media == ide_disk)
			switch (input) {
			case -1:
				drive->dev_flags &= ~IDE_DFLAG_NO_UNLOAD;
				break;
			case -2:
				drive->dev_flags |= IDE_DFLAG_NO_UNLOAD;
				break;
			}
		else
			rc = -EOPNOTSUPP;
	}
	FUNC3(&ide_setting_mtx);

	return rc ? rc : len;
}