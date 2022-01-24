#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint16_t ;
struct sts_entry_fx00 {int /*<<< orphan*/  handle; } ;
struct rsp_que {int dummy; } ;
struct req_que {int dummy; } ;
struct qla_hw_data {struct req_que** req_q_map; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* done ) (struct qla_hw_data*,TYPE_1__*,int) ;} ;
typedef  TYPE_1__ srb_t ;
struct TYPE_10__ {int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int DID_ERROR ; 
 int /*<<< orphan*/  ISP_ABORT_NEEDED ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_dbg_async ; 
 TYPE_1__* FUNC2 (TYPE_2__*,char const*,struct req_que*,struct sts_entry_fx00*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct qla_hw_data*,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC6(scsi_qla_host_t *vha, struct rsp_que *rsp,
		    struct sts_entry_fx00 *pkt, uint8_t estatus, uint8_t etype)
{
	srb_t *sp;
	struct qla_hw_data *ha = vha->hw;
	const char func[] = "ERROR-IOCB";
	uint16_t que = FUNC0(pkt->handle);
	struct req_que *req = NULL;
	int res = DID_ERROR << 16;

	FUNC1(ql_dbg_async, vha, 0x507f,
	    "type of error status in response: 0x%x\n", estatus);

	req = ha->req_q_map[que];

	sp = FUNC2(vha, func, req, pkt);
	if (sp) {
		sp->done(ha, sp, res);
		return;
	}

	FUNC4(ISP_ABORT_NEEDED, &vha->dpc_flags);
	FUNC3(vha);
}