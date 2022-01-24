#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_3__* device; } ;
struct TYPE_6__ {TYPE_1__* host; } ;
struct TYPE_5__ {int (* eh_target_reset_handler ) (struct scsi_cmnd*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; TYPE_2__* hostt; } ;

/* Variables and functions */
 int FAILED ; 
 int SUCCESS ; 
 int /*<<< orphan*/  __scsi_report_device_reset ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC4 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC5(struct scsi_cmnd *scmd)
{
	unsigned long flags;
	int rtn;

	if (!scmd->device->host->hostt->eh_target_reset_handler)
		return FAILED;

	rtn = scmd->device->host->hostt->eh_target_reset_handler(scmd);
	if (rtn == SUCCESS) {
		FUNC2(scmd->device->host->host_lock, flags);
		FUNC0(FUNC1(scmd->device), NULL,
					  __scsi_report_device_reset);
		FUNC3(scmd->device->host->host_lock, flags);
	}

	return rtn;
}