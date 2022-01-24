#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct scsi_qla_host {int /*<<< orphan*/  req; struct qla_hw_data* hw; } ;
struct TYPE_2__ {int cpu_affinity_enabled; } ;
struct qla_hw_data {int fw_attributes; int max_rsp_queues; int max_req_queues; int /*<<< orphan*/ * rsp_q_map; int /*<<< orphan*/ * req_q_map; scalar_t__ mqenable; int /*<<< orphan*/ * wq; TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_1 ; 
 int BIT_6 ; 
 int /*<<< orphan*/  BIT_7 ; 
 int /*<<< orphan*/  QLA_DEFAULT_QUE_QOS ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ ql2xmultique_tag ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,int,int) ; 
 int /*<<< orphan*/  ql_dbg_init ; 
 int /*<<< orphan*/  ql_dbg_multiq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC5 (struct qla_hw_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qla_hw_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*) ; 

__attribute__((used)) static int FUNC8(struct scsi_qla_host *vha)
{
	uint16_t options = 0;
	int ques, req, ret;
	struct qla_hw_data *ha = vha->hw;

	if (!(ha->fw_attributes & BIT_6)) {
		FUNC4(ql_log_warn, vha, 0x00d8,
		    "Firmware is not multi-queue capable.\n");
		goto fail;
	}
	if (ql2xmultique_tag) {
		/* create a request queue for IO */
		options |= BIT_7;
		req = FUNC5(ha, options, 0, 0, -1,
			QLA_DEFAULT_QUE_QOS);
		if (!req) {
			FUNC4(ql_log_warn, vha, 0x00e0,
			    "Failed to create request queue.\n");
			goto fail;
		}
		ha->wq = FUNC0("qla2xxx_wq");
		vha->req = ha->req_q_map[req];
		options |= BIT_1;
		for (ques = 1; ques < ha->max_rsp_queues; ques++) {
			ret = FUNC6(ha, options, 0, 0, req);
			if (!ret) {
				FUNC4(ql_log_warn, vha, 0x00e8,
				    "Failed to create response queue.\n");
				goto fail2;
			}
		}
		ha->flags.cpu_affinity_enabled = 1;
		FUNC3(ql_dbg_multiq, vha, 0xc007,
		    "CPU affinity mode enalbed, "
		    "no. of response queues:%d no. of request queues:%d.\n",
		    ha->max_rsp_queues, ha->max_req_queues);
		FUNC3(ql_dbg_init, vha, 0x00e9,
		    "CPU affinity mode enalbed, "
		    "no. of response queues:%d no. of request queues:%d.\n",
		    ha->max_rsp_queues, ha->max_req_queues);
	}
	return 0;
fail2:
	FUNC7(vha);
	FUNC1(ha->wq);
	ha->wq = NULL;
	vha->req = ha->req_q_map[0];
fail:
	ha->mqenable = 0;
	FUNC2(ha->req_q_map);
	FUNC2(ha->rsp_q_map);
	ha->max_req_queues = ha->max_rsp_queues = 1;
	return 1;
}