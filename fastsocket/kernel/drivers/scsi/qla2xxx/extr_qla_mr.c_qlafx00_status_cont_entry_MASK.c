#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_14__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ sts_cont_entry_t ;
struct scsi_qla_host {int dummy; } ;
struct scsi_cmnd {int /*<<< orphan*/  result; } ;
struct rsp_que {TYPE_2__* status_srb; struct qla_hw_data* hw; } ;
struct qla_hw_data {int /*<<< orphan*/  pdev; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* done ) (struct qla_hw_data*,TYPE_2__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ srb_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int* FUNC1 (TYPE_2__*) ; 
 struct scsi_cmnd* FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 struct scsi_qla_host* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct scsi_qla_host*,int,char*,TYPE_2__*,...) ; 
 scalar_t__ ql_dbg_buffer ; 
 scalar_t__ ql_dbg_io ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,struct scsi_qla_host*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC12 (struct qla_hw_data*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct rsp_que *rsp, sts_cont_entry_t *pkt)
{
	uint8_t	sense_sz = 0;
	struct qla_hw_data *ha = rsp->hw;
	struct scsi_qla_host *vha = FUNC8(ha->pdev);
	srb_t *sp = rsp->status_srb;
	struct scsi_cmnd *cp;
	uint32_t sense_len;
	uint8_t *sense_ptr;

	if (!sp) {
		FUNC9(ql_dbg_io, vha, 0x3037,
		    "no SP, sp = %p\n", sp);
		return;
	}

	if (!FUNC3(sp)) {
		FUNC9(ql_dbg_io, vha, 0x304b,
		    "no fw sense data, sp = %p\n", sp);
		return;
	}
	cp = FUNC2(sp);
	if (cp == NULL) {
		FUNC11(ql_log_warn, vha, 0x303b,
		    "cmd is NULL: already returned to OS (sp=%p).\n", sp);

		rsp->status_srb = NULL;
		return;
	}

	if (!FUNC0(sp)) {
		FUNC9(ql_dbg_io, vha, 0x304c,
		    "no sense data, sp = %p\n", sp);
	} else {
		sense_len = FUNC0(sp);
		sense_ptr = FUNC1(sp);
		FUNC9(ql_dbg_io, vha, 0x304f,
		    "sp=%p sense_len=0x%x sense_ptr=%p.\n",
		    sp, sense_len, sense_ptr);

		if (sense_len > sizeof(pkt->data))
			sense_sz = sizeof(pkt->data);
		else
			sense_sz = sense_len;

		/* Move sense data. */
		FUNC10(ql_dbg_io + ql_dbg_buffer, vha, 0x304e,
		    (uint8_t *)pkt, sizeof(sts_cont_entry_t));
		FUNC7(sense_ptr, pkt->data, sense_sz);
		FUNC10(ql_dbg_io + ql_dbg_buffer, vha, 0x304a,
		    sense_ptr, sense_sz);

		sense_len -= sense_sz;
		sense_ptr += sense_sz;

		FUNC5(sp, sense_ptr);
		FUNC4(sp, sense_len);
	}
	sense_len = FUNC3(sp);
	sense_len = (sense_len > sizeof(pkt->data)) ?
	    (sense_len - sizeof(pkt->data)) : 0;
	FUNC6(sp, sense_len);

	/* Place command on done queue. */
	if (sense_len == 0) {
		rsp->status_srb = NULL;
		sp->done(ha, sp, cp->result);
	}
}