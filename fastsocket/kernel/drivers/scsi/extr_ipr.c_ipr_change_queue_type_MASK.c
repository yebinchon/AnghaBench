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
struct scsi_device {int /*<<< orphan*/  queue_depth; scalar_t__ tagged_supported; scalar_t__ hostdata; TYPE_2__* host; } ;
struct ipr_resource_entry {int dummy; } ;
struct ipr_ioa_cfg {TYPE_1__* host; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ipr_resource_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct scsi_device *sdev, int tag_type)
{
	struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)sdev->host->hostdata;
	struct ipr_resource_entry *res;
	unsigned long lock_flags = 0;

	FUNC4(ioa_cfg->host->host_lock, lock_flags);
	res = (struct ipr_resource_entry *)sdev->hostdata;

	if (res) {
		if (FUNC0(res) && sdev->tagged_supported) {
			/*
			 * We don't bother quiescing the device here since the
			 * adapter firmware does it for us.
			 */
			FUNC3(sdev, tag_type);

			if (tag_type)
				FUNC1(sdev, sdev->queue_depth);
			else
				FUNC2(sdev, sdev->queue_depth);
		} else
			tag_type = 0;
	} else
		tag_type = 0;

	FUNC5(ioa_cfg->host->host_lock, lock_flags);
	return tag_type;
}