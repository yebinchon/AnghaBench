#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_1__* device; } ;
struct fc_port {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  host_no; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
typedef  struct fc_port fc_port_t ;
struct TYPE_8__ {unsigned int id; unsigned int lun; scalar_t__ hostdata; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int FAILED ; 
 scalar_t__ QLA_SUCCESS ; 
 int SUCCESS ; 
 int /*<<< orphan*/  WAIT_HOST ; 
 int FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct scsi_cmnd *cmd)
{
	scsi_qla_host_t *vha = FUNC5(cmd->device->host);
	fc_port_t *fcport = (struct fc_port *) cmd->device->hostdata;
	int ret = FAILED;
	unsigned int id, lun;

	id = cmd->device->id;
	lun = cmd->device->lun;

	if (!fcport) {
		return ret;
	}

	ret = FUNC0(cmd);
	if (ret != 0)
		return ret;
	ret = FAILED;

	FUNC1(ql_log_info, vha, 0x8012,
	    "BUS RESET ISSUED nexus=%ld:%d:%d.\n", vha->host_no, id, lun);

	if (FUNC4(vha) != QLA_SUCCESS) {
		FUNC1(ql_log_fatal, vha, 0x8013,
		    "Wait for hba online failed board disabled.\n");
		goto eh_bus_reset_done;
	}

	if (FUNC3(vha) == QLA_SUCCESS)
		ret = SUCCESS;

	if (ret == FAILED)
		goto eh_bus_reset_done;

	/* Flush outstanding commands. */
	if (FUNC2(vha, 0, 0, WAIT_HOST) !=
	    QLA_SUCCESS) {
		FUNC1(ql_log_warn, vha, 0x8014,
		    "Wait for pending commands failed.\n");
		ret = FAILED;
	}

eh_bus_reset_done:
	FUNC1(ql_log_warn, vha, 0x802b,
	    "BUS RESET %s nexus=%ld:%d:%d.\n",
	    (ret == FAILED) ? "FAILED" : "SUCCEEDED", vha->host_no, id, lun);

	return ret;
}