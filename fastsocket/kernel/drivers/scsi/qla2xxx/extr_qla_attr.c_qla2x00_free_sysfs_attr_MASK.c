#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sysfs_entry {int is4GBp_only; int /*<<< orphan*/  attr; scalar_t__ name; } ;
struct qla_hw_data {int beacon_blink_led; TYPE_2__* isp_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct Scsi_Host {TYPE_1__ shost_gendev; } ;
struct TYPE_8__ {struct qla_hw_data* hw; struct Scsi_Host* host; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* beacon_off ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*) ; 
 struct sysfs_entry* bin_file_entries ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5(scsi_qla_host_t *vha)
{
	struct Scsi_Host *host = vha->host;
	struct sysfs_entry *iter;
	struct qla_hw_data *ha = vha->hw;

	for (iter = bin_file_entries; iter->name; iter++) {
		if (iter->is4GBp_only && !FUNC1(ha))
			continue;
		if (iter->is4GBp_only == 2 && !FUNC2(ha))
			continue;
		if (iter->is4GBp_only == 3 && !(FUNC0(vha->hw)))
			continue;

		FUNC4(&host->shost_gendev.kobj,
		    iter->attr);
	}

	if (ha->beacon_blink_led == 1)
		ha->isp_ops->beacon_off(vha);
}