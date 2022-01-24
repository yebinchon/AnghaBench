#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int nic_core_reset_hdlr_active; } ;
struct qla_hw_data {int mctp_dumped; TYPE_2__ flags; scalar_t__ mctp_dump; int /*<<< orphan*/  mctp_dump_dma; TYPE_1__* pdev; } ;
struct TYPE_11__ {int /*<<< orphan*/  host_no; struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int MCTP_DUMP_SIZE ; 
 int /*<<< orphan*/  MCTP_DUMP_STR_ADDR ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_p3p ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_3__*) ; 

int
FUNC6(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;
	int rval = QLA_FUNCTION_FAILED;

	if (!FUNC0(ha)) {
		/* This message can be removed from the final version */
		FUNC3(ql_log_info, vha, 0x506d,
		    "This board is not MCTP capable\n");
		return rval;
	}

	if (!ha->mctp_dump) {
		ha->mctp_dump = FUNC1(&ha->pdev->dev,
		    MCTP_DUMP_SIZE, &ha->mctp_dump_dma, GFP_KERNEL);

		if (!ha->mctp_dump) {
			FUNC3(ql_log_warn, vha, 0x506e,
			    "Failed to allocate memory for mctp dump\n");
			return rval;
		}
	}

#define MCTP_DUMP_STR_ADDR	0x00000000
	rval = FUNC4(vha, ha->mctp_dump_dma,
	    MCTP_DUMP_STR_ADDR, MCTP_DUMP_SIZE/4);
	if (rval != QLA_SUCCESS) {
		FUNC3(ql_log_warn, vha, 0x506f,
		    "Failed to capture mctp dump\n");
	} else {
		FUNC3(ql_log_info, vha, 0x5070,
		    "Mctp dump capture for host (%ld/%p).\n",
		    vha->host_no, ha->mctp_dump);
		ha->mctp_dumped = 1;
	}

	if (!ha->flags.nic_core_reset_hdlr_active) {
		ha->flags.nic_core_reset_hdlr_active = 1;
		rval = FUNC5(vha);
		if (rval)
			/* NIC Core reset failed. */
			FUNC3(ql_log_warn, vha, 0x5071,
			    "Failed to restart nic firmware\n");
		else
			FUNC2(ql_dbg_p3p, vha, 0xb084,
			    "Restarted NIC firmware successfully.\n");
		ha->flags.nic_core_reset_hdlr_active = 0;
	}

	return rval;

}