#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct tsk_mgmt_entry {int entry_count; int /*<<< orphan*/  lun; int /*<<< orphan*/  vp_index; int /*<<< orphan*/ * port_id; int /*<<< orphan*/  control_flags; void* timeout; void* nport_handle; int /*<<< orphan*/  handle; int /*<<< orphan*/  entry_type; } ;
struct TYPE_10__ {scalar_t__ flags; unsigned int lun; } ;
struct TYPE_11__ {TYPE_2__ tmf; } ;
struct srb_iocb {TYPE_3__ u; } ;
struct req_que {int /*<<< orphan*/  id; } ;
struct qla_hw_data {int r_a_tov; } ;
struct TYPE_12__ {int /*<<< orphan*/  domain; int /*<<< orphan*/  area; int /*<<< orphan*/  al_pa; } ;
struct TYPE_13__ {TYPE_4__ b; } ;
struct fc_port {int loop_id; TYPE_7__* vha; TYPE_5__ d_id; } ;
struct TYPE_9__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_14__ {TYPE_1__ u; struct fc_port* fcport; } ;
typedef  TYPE_6__ srb_t ;
struct TYPE_15__ {int /*<<< orphan*/  vp_idx; struct req_que* req; struct qla_hw_data* hw; } ;
typedef  TYPE_7__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TCF_LUN_RESET ; 
 int /*<<< orphan*/  TSK_MGMT_IOCB_TYPE ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(srb_t *sp, struct tsk_mgmt_entry *tsk)
{
	uint32_t flags;
	unsigned int lun;
	struct fc_port *fcport = sp->fcport;
	scsi_qla_host_t *vha = fcport->vha;
	struct qla_hw_data *ha = vha->hw;
	struct srb_iocb *iocb = &sp->u.iocb_cmd;
	struct req_que *req = vha->req;

	flags = iocb->u.tmf.flags;
	lun = iocb->u.tmf.lun;

	tsk->entry_type = TSK_MGMT_IOCB_TYPE;
	tsk->entry_count = 1;
	tsk->handle = FUNC0(req->id, tsk->handle);
	tsk->nport_handle = FUNC1(fcport->loop_id);
	tsk->timeout = FUNC1(ha->r_a_tov / 10 * 2);
	tsk->control_flags = FUNC2(flags);
	tsk->port_id[0] = fcport->d_id.b.al_pa;
	tsk->port_id[1] = fcport->d_id.b.area;
	tsk->port_id[2] = fcport->d_id.b.domain;
	tsk->vp_index = fcport->vha->vp_idx;

	if (flags == TCF_LUN_RESET) {
		FUNC4(lun, &tsk->lun);
		FUNC3((uint8_t *)&tsk->lun,
			sizeof(tsk->lun));
	}
}