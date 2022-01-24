#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {scalar_t__ private; } ;
struct ide_driver {int /*<<< orphan*/  version; } ;
struct device {TYPE_2__* driver; } ;
struct TYPE_3__ {struct device gendev; } ;
typedef  TYPE_1__ ide_drive_t ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 struct ide_driver* FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	ide_drive_t		*drive = (ide_drive_t *)m->private;
	struct device		*dev = &drive->gendev;
	struct ide_driver	*ide_drv;

	if (dev->driver) {
		ide_drv = FUNC1(dev->driver);
		FUNC0(m, "%s version %s\n",
				dev->driver->name, ide_drv->version);
	} else
		FUNC0(m, "ide-default version 0.9.newide\n");
	return 0;
}