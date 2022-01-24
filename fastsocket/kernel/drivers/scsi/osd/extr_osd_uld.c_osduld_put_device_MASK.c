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
struct TYPE_3__ {scalar_t__ scsi_device; } ;
struct osd_uld_device {TYPE_1__ od; } ;
struct osd_dev {scalar_t__ scsi_device; TYPE_2__* file; } ;
struct TYPE_4__ {struct osd_uld_device* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct osd_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct osd_dev*) ; 

void FUNC4(struct osd_dev *od)
{

	if (od && !FUNC1(od)) {
		struct osd_uld_device *oud = od->file->private_data;

		FUNC0(od->scsi_device != oud->od.scsi_device);

		FUNC2(od->file);
		FUNC3(od);
	}
}