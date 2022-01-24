#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sysfs_entry {int is4GBp_only; scalar_t__ name; int /*<<< orphan*/  attr; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct Scsi_Host {TYPE_1__ shost_gendev; } ;
struct TYPE_7__ {int /*<<< orphan*/  hw; struct Scsi_Host* host; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysfs_entry* bin_file_entries ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  ql_dbg_init ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(scsi_qla_host_t *vha)
{
	struct Scsi_Host *host = vha->host;
	struct sysfs_entry *iter;
	int ret;

	for (iter = bin_file_entries; iter->name; iter++) {
		if (iter->is4GBp_only && !FUNC1(vha->hw))
			continue;
		if (iter->is4GBp_only == 2 && !FUNC2(vha->hw))
			continue;
		if (iter->is4GBp_only == 3 && !(FUNC0(vha->hw)))
			continue;

		ret = FUNC5(&host->shost_gendev.kobj,
		    iter->attr);
		if (ret)
			FUNC4(ql_log_warn, vha, 0x00f3,
			    "Unable to create sysfs %s binary attribute (%d).\n",
			    iter->name, ret);
		else
			FUNC3(ql_dbg_init, vha, 0x00f4,
			    "Successfully created sysfs %s binary attribure.\n",
			    iter->name);
	}
}