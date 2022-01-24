#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/ * id; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 size_t ATA_ID_SERNO ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 TYPE_1__* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, struct device_attribute *attr,
			   char *buf)
{
	ide_drive_t *drive = FUNC1(dev);
	return FUNC0(buf, "%s\n", (char *)&drive->id[ATA_ID_SERNO]);
}