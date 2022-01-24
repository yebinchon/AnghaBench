#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct qla_hw_data {int optrom_size; scalar_t__ optrom_state; int optrom_region_start; int flt_region_boot; int flt_region_fw; scalar_t__ optrom_region_size; int /*<<< orphan*/  optrom_buffer; int /*<<< orphan*/  pdev; } ;
struct TYPE_14__ {scalar_t__ payload_len; } ;
struct TYPE_13__ {scalar_t__ payload_len; } ;
struct fc_bsg_job {TYPE_5__ reply_payload; TYPE_4__ request_payload; TYPE_3__* request; } ;
struct TYPE_15__ {struct qla_hw_data* hw; } ;
typedef  TYPE_6__ scsi_qla_host_t ;
struct TYPE_10__ {int* vendor_cmd; } ;
struct TYPE_11__ {TYPE_1__ h_vendor; } ;
struct TYPE_12__ {TYPE_2__ rqst_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ OPTROM_SIZE_2300 ; 
 scalar_t__ QLA_SREADING ; 
 scalar_t__ QLA_SWAITING ; 
 scalar_t__ QLA_SWRITING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_6__*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  ql_dbg_user ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_6__*,int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static int
FUNC10(struct fc_bsg_job *bsg_job, scsi_qla_host_t *vha,
	uint8_t is_update)
{
	uint32_t start = 0;
	int valid = 0;
	struct qla_hw_data *ha = vha->hw;

	if (FUNC8(FUNC5(ha->pdev)))
		return -EINVAL;

	start = bsg_job->request->rqst_data.h_vendor.vendor_cmd[1];
	if (start > ha->optrom_size) {
		FUNC7(ql_log_warn, vha, 0x7055,
		    "start %d > optrom_size %d.\n", start, ha->optrom_size);
		return -EINVAL;
	}

	if (ha->optrom_state != QLA_SWAITING) {
		FUNC7(ql_log_info, vha, 0x7056,
		    "optrom_state %d.\n", ha->optrom_state);
		return -EBUSY;
	}

	ha->optrom_region_start = start;
	FUNC6(ql_dbg_user, vha, 0x7057, "is_update=%d.\n", is_update);
	if (is_update) {
		if (ha->optrom_size == OPTROM_SIZE_2300 && start == 0)
			valid = 1;
		else if (start == (ha->flt_region_boot * 4) ||
		    start == (ha->flt_region_fw * 4))
			valid = 1;
		else if (FUNC2(ha) || FUNC3(ha) ||
		    FUNC0(ha) || FUNC1(ha))
			valid = 1;
		if (!valid) {
			FUNC7(ql_log_warn, vha, 0x7058,
			    "Invalid start region 0x%x/0x%x.\n", start,
			    bsg_job->request_payload.payload_len);
			return -EINVAL;
		}

		ha->optrom_region_size = start +
		    bsg_job->request_payload.payload_len > ha->optrom_size ?
		    ha->optrom_size - start :
		    bsg_job->request_payload.payload_len;
		ha->optrom_state = QLA_SWRITING;
	} else {
		ha->optrom_region_size = start +
		    bsg_job->reply_payload.payload_len > ha->optrom_size ?
		    ha->optrom_size - start :
		    bsg_job->reply_payload.payload_len;
		ha->optrom_state = QLA_SREADING;
	}

	ha->optrom_buffer = FUNC9(ha->optrom_region_size);
	if (!ha->optrom_buffer) {
		FUNC7(ql_log_warn, vha, 0x7059,
		    "Read: Unable to allocate memory for optrom retrieval "
		    "(%x)\n", ha->optrom_region_size);

		ha->optrom_state = QLA_SWAITING;
		return -ENOMEM;
	}

	FUNC4(ha->optrom_buffer, 0, ha->optrom_region_size);
	return 0;
}