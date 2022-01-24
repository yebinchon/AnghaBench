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
struct sysinfo {int /*<<< orphan*/  freeram; } ;
struct hv_dynmem_device {TYPE_2__* dev; scalar_t__ num_pages_ballooned; } ;
struct TYPE_3__ {int size; scalar_t__ trans_id; int /*<<< orphan*/  type; } ;
struct dm_status {TYPE_1__ hdr; scalar_t__ num_committed; int /*<<< orphan*/  num_avail; } ;
struct TYPE_4__ {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_STATUS_REPORT ; 
 int /*<<< orphan*/  VM_PKT_DATA_INBAND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dm_status*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ pressure_report_delay ; 
 int /*<<< orphan*/  FUNC4 (struct sysinfo*) ; 
 int /*<<< orphan*/  trans_id ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct dm_status*,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hv_dynmem_device *dm)
{
	struct dm_status status;
	struct sysinfo val;

	if (pressure_report_delay > 0) {
		--pressure_report_delay;
		return;
	}
	FUNC4(&val);
	FUNC3(&status, 0, sizeof(struct dm_status));
	status.hdr.type = DM_STATUS_REPORT;
	status.hdr.size = sizeof(struct dm_status);
	status.hdr.trans_id = FUNC0(&trans_id);

	/*
	 * The host expects the guest to report free memory.
	 * Further, the host expects the pressure information to
	 * include the ballooned out pages.
	 * For a given amount of memory that we are managing, we
	 * need to compute a floor below which we should not balloon.
	 * Compute this and add it to the pressure report.
	 */
	status.num_avail = val.freeram;
	status.num_committed = FUNC5() +
				dm->num_pages_ballooned +
				FUNC2();

	/*
	 * If our transaction ID is no longer current, just don't
	 * send the status. This can happen if we were interrupted
	 * after we picked our transaction ID.
	 */
	if (status.hdr.trans_id != FUNC1(&trans_id))
		return;

	FUNC6(dm->dev->channel, &status,
				sizeof(struct dm_status),
				(unsigned long)NULL,
				VM_PKT_DATA_INBAND, 0);

}