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
struct scsi_device {struct ipr_resource_entry* hostdata; TYPE_1__* host; } ;
struct ipr_resource_entry {int needs_sync_complete; scalar_t__ in_erp; scalar_t__ add_to_ml; struct scsi_device* sdev; } ;
struct ipr_ioa_cfg {TYPE_2__* host; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (struct scsi_device*) ; 
 struct ipr_resource_entry* FUNC1 (struct scsi_device*) ; 
 scalar_t__ FUNC2 (struct ipr_resource_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipr_resource_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct scsi_device *sdev)
{
	struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *) sdev->host->hostdata;
	struct ipr_resource_entry *res;
	unsigned long lock_flags;
	int rc = -ENXIO;

	sdev->hostdata = NULL;

	FUNC4(ioa_cfg->host->host_lock, lock_flags);

	res = FUNC1(sdev);
	if (res) {
		res->sdev = sdev;
		res->add_to_ml = 0;
		res->in_erp = 0;
		sdev->hostdata = res;
		if (!FUNC3(res))
			res->needs_sync_complete = 1;
		rc = 0;
		if (FUNC2(res)) {
			FUNC5(ioa_cfg->host->host_lock, lock_flags);
			return FUNC0(sdev);
		}
	}

	FUNC5(ioa_cfg->host->host_lock, lock_flags);

	return rc;
}