#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {int /*<<< orphan*/  lun; TYPE_1__* sdev_target; } ;
struct info_str {int dummy; } ;
struct ahc_linux_device {int /*<<< orphan*/  qfrozen; int /*<<< orphan*/  maxtags; int /*<<< orphan*/  openings; int /*<<< orphan*/  active; int /*<<< orphan*/  commands_issued; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; scalar_t__ channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct info_str*,char*,int /*<<< orphan*/ ,...) ; 
 struct ahc_linux_device* FUNC1 (struct scsi_device*) ; 

__attribute__((used)) static void
FUNC2(struct info_str *info, struct scsi_device *sdev)
{
	struct ahc_linux_device *dev = FUNC1(sdev);

	FUNC0(info, "\tChannel %c Target %d Lun %d Settings\n",
		  sdev->sdev_target->channel + 'A',
		  sdev->sdev_target->id, sdev->lun);

	FUNC0(info, "\t\tCommands Queued %ld\n", dev->commands_issued);
	FUNC0(info, "\t\tCommands Active %d\n", dev->active);
	FUNC0(info, "\t\tCommand Openings %d\n", dev->openings);
	FUNC0(info, "\t\tMax Tagged Openings %d\n", dev->maxtags);
	FUNC0(info, "\t\tDevice Queue Frozen Count %d\n", dev->qfrozen);
}