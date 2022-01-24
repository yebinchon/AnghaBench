#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct tsk_mgmt_entry {int dummy; } ;
struct sts_entry_24xx {scalar_t__ entry_status; scalar_t__ comp_status; scalar_t__ scsi_status; scalar_t__ rsp_data_len; scalar_t__* data; } ;
struct TYPE_9__ {int data; } ;
struct TYPE_10__ {TYPE_2__ tmf; } ;
struct srb_iocb {TYPE_3__ u; } ;
struct req_que {int dummy; } ;
struct TYPE_8__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_11__ {char* name; int /*<<< orphan*/  (* done ) (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  handle; TYPE_5__* fcport; TYPE_1__ u; } ;
typedef  TYPE_4__ srb_t ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;
struct TYPE_12__ {int /*<<< orphan*/  vha; } ;
typedef  TYPE_5__ fc_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  CS_COMPLETE ; 
 int SS_RESPONSE_INFO_LEN_VALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ ql_dbg_async ; 
 scalar_t__ ql_dbg_buffer ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *,char const*,struct req_que*,struct tsk_mgmt_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(scsi_qla_host_t *vha, struct req_que *req,
    struct tsk_mgmt_entry *tsk)
{
	const char func[] = "TMF-IOCB";
	const char *type;
	fc_port_t *fcport;
	srb_t *sp;
	struct srb_iocb *iocb;
	struct sts_entry_24xx *sts = (struct sts_entry_24xx *)tsk;
	int error = 1;

	sp = FUNC5(vha, func, req, tsk);
	if (!sp)
		return;

	iocb = &sp->u.iocb_cmd;
	type = sp->name;
	fcport = sp->fcport;

	if (sts->entry_status) {
		FUNC4(ql_log_warn, fcport->vha, 0x5038,
		    "Async-%s error - hdl=%x entry-status(%x).\n",
		    type, sp->handle, sts->entry_status);
	} else if (sts->comp_status != FUNC0(CS_COMPLETE)) {
		FUNC4(ql_log_warn, fcport->vha, 0x5039,
		    "Async-%s error - hdl=%x completion status(%x).\n",
		    type, sp->handle, sts->comp_status);
	} else if (!(FUNC1(sts->scsi_status) &
	    SS_RESPONSE_INFO_LEN_VALID)) {
		FUNC4(ql_log_warn, fcport->vha, 0x503a,
		    "Async-%s error - hdl=%x no response info(%x).\n",
		    type, sp->handle, sts->scsi_status);
	} else if (FUNC2(sts->rsp_data_len) < 4) {
		FUNC4(ql_log_warn, fcport->vha, 0x503b,
		    "Async-%s error - hdl=%x not enough response(%d).\n",
		    type, sp->handle, sts->rsp_data_len);
	} else if (sts->data[3]) {
		FUNC4(ql_log_warn, fcport->vha, 0x503c,
		    "Async-%s error - hdl=%x response(%x).\n",
		    type, sp->handle, sts->data[3]);
	} else {
		error = 0;
	}

	if (error) {
		iocb->u.tmf.data = error;
		FUNC3(ql_dbg_async + ql_dbg_buffer, vha, 0x5055,
		    (uint8_t *)sts, sizeof(*sts));
	}

	sp->done(vha, sp, 0);
}