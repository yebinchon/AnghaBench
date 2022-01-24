#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {int fw_dumped; int /*<<< orphan*/  fw_dump; } ;
struct TYPE_5__ {int /*<<< orphan*/  host_no; struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  QLA_UEVENT_CODE_FW_DUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int,char*,int,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC2(scsi_qla_host_t *vha, int rval)
{
	struct qla_hw_data *ha = vha->hw;

	if (rval != QLA_SUCCESS) {
		FUNC0(ql_log_warn, vha, 0xd000,
		    "Failed to dump firmware (%x).\n", rval);
		ha->fw_dumped = 0;
	} else {
		FUNC0(ql_log_info, vha, 0xd001,
		    "Firmware dump saved to temp buffer (%ld/%p).\n",
		    vha->host_no, ha->fw_dump);
		ha->fw_dumped = 1;
		FUNC1(vha, QLA_UEVENT_CODE_FW_DUMP);
	}
}