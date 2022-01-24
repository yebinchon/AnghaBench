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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct scsi_qla_host {int /*<<< orphan*/  vp_idx; struct qla_hw_data* hw; } ;
struct rsp_que {int dummy; } ;
struct req_que {int /*<<< orphan*/  id; } ;
struct qla_hw_data {struct req_que** req_q_map; int /*<<< orphan*/  pdev; } ;
struct mrk_entry_fx00 {void** lun; void* tgt_id; scalar_t__ handle_hi; void* handle; } ;
struct mrk_entry_24xx {void* handle; int /*<<< orphan*/  vp_index; void** lun; void* nport_handle; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;
struct TYPE_2__ {void* lun; int /*<<< orphan*/  target; scalar_t__ modifier; int /*<<< orphan*/  entry_type; } ;
typedef  TYPE_1__ mrk_entry_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  MARKER_TYPE ; 
 scalar_t__ MK_SYNC_ALL ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (struct qla_hw_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void**,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC10 (struct scsi_qla_host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_qla_host*,struct req_que*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int
FUNC13(struct scsi_qla_host *vha, struct req_que *req,
			struct rsp_que *rsp, uint16_t loop_id,
			uint16_t lun, uint8_t type)
{
	mrk_entry_t *mrk;
	struct mrk_entry_24xx *mrk24 = NULL;
	struct mrk_entry_fx00 *mrkfx = NULL;

	struct qla_hw_data *ha = vha->hw;
	scsi_qla_host_t *base_vha = FUNC8(ha->pdev);

	req = ha->req_q_map[0];
	mrk = (mrk_entry_t *)FUNC10(vha, NULL);
	if (mrk == NULL) {
		FUNC9(ql_log_warn, base_vha, 0x3026,
		    "Failed to allocate Marker IOCB.\n");

		return (QLA_FUNCTION_FAILED);
	}

	mrk->entry_type = MARKER_TYPE;
	mrk->modifier = type;
	if (type != MK_SYNC_ALL) {
		if (FUNC1(ha)) {
			mrkfx = (struct mrk_entry_fx00 *) mrk;
			mrkfx->handle = FUNC3(req->id, mrkfx->handle);
			mrkfx->handle_hi = 0;
			mrkfx->tgt_id = FUNC6(loop_id);
			mrkfx->lun[1] = FUNC2(lun);
			mrkfx->lun[2] = FUNC4(lun);
			FUNC7(mrkfx->lun, sizeof(mrkfx->lun));
		} else if (FUNC0(ha)) {
			mrk24 = (struct mrk_entry_24xx *) mrk;
			mrk24->nport_handle = FUNC6(loop_id);
			mrk24->lun[1] = FUNC2(lun);
			mrk24->lun[2] = FUNC4(lun);
			FUNC7(mrk24->lun, sizeof(mrk24->lun));
			mrk24->vp_index = vha->vp_idx;
			mrk24->handle = FUNC3(req->id, mrk24->handle);
		} else {
			FUNC5(ha, mrk->target, loop_id);
			mrk->lun = FUNC6(lun);
		}
	}
	FUNC12();

	FUNC11(vha, req);

	return (QLA_SUCCESS);
}