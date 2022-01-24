#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {void* result; TYPE_2__* device; } ;
struct asc_scsi_q {int /*<<< orphan*/  sg_head; } ;
struct TYPE_10__ {int err_code; } ;
struct TYPE_9__ {int err_code; } ;
struct TYPE_7__ {TYPE_4__ adv_dvc_var; TYPE_3__ asc_dvc_var; } ;
struct asc_board {int /*<<< orphan*/ * reqcnt; TYPE_1__ dvc_var; } ;
struct TYPE_8__ {size_t id; int /*<<< orphan*/  host; } ;
typedef  TYPE_3__ ASC_DVC_VAR ;
typedef  int /*<<< orphan*/  ADV_SCSI_REQ_Q ;
typedef  TYPE_4__ ADV_DVC_VAR ;

/* Variables and functions */
#define  ASC_BUSY 130 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
#define  ASC_ERROR 129 
 scalar_t__ FUNC1 (struct asc_board*) ; 
#define  ASC_NOERROR 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_3__*,struct asc_scsi_q*) ; 
 int /*<<< orphan*/  DID_ERROR ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC6 (struct asc_board*,struct scsi_cmnd*,int /*<<< orphan*/ **) ; 
 int FUNC7 (struct asc_board*,struct scsi_cmnd*,struct asc_scsi_q*) ; 
 int /*<<< orphan*/  build_error ; 
 int /*<<< orphan*/  exe_busy ; 
 int /*<<< orphan*/  exe_error ; 
 int /*<<< orphan*/  exe_noerror ; 
 int /*<<< orphan*/  exe_unknown ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,int) ; 
 struct asc_board* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct scsi_cmnd *scp)
{
	int ret, err_code;
	struct asc_board *boardp = FUNC10(scp->device->host);

	FUNC0(1, "scp 0x%p\n", scp);

	if (FUNC1(boardp)) {
		ASC_DVC_VAR *asc_dvc = &boardp->dvc_var.asc_dvc_var;
		struct asc_scsi_q asc_scsi_q;

		/* asc_build_req() can not return ASC_BUSY. */
		ret = FUNC7(boardp, scp, &asc_scsi_q);
		if (ret == ASC_ERROR) {
			FUNC2(scp->device->host, build_error);
			return ASC_ERROR;
		}

		ret = FUNC4(asc_dvc, &asc_scsi_q);
		FUNC8(asc_scsi_q.sg_head);
		err_code = asc_dvc->err_code;
	} else {
		ADV_DVC_VAR *adv_dvc = &boardp->dvc_var.adv_dvc_var;
		ADV_SCSI_REQ_Q *adv_scsiqp;

		switch (FUNC6(boardp, scp, &adv_scsiqp)) {
		case ASC_NOERROR:
			FUNC0(3, "adv_build_req ASC_NOERROR\n");
			break;
		case ASC_BUSY:
			FUNC0(1, "adv_build_req ASC_BUSY\n");
			/*
			 * The asc_stats fields 'adv_build_noreq' and
			 * 'adv_build_nosg' count wide board busy conditions.
			 * They are updated in adv_build_req and
			 * adv_get_sglist, respectively.
			 */
			return ASC_BUSY;
		case ASC_ERROR:
		default:
			FUNC0(1, "adv_build_req ASC_ERROR\n");
			FUNC2(scp->device->host, build_error);
			return ASC_ERROR;
		}

		ret = FUNC3(adv_dvc, adv_scsiqp);
		err_code = adv_dvc->err_code;
	}

	switch (ret) {
	case ASC_NOERROR:
		FUNC2(scp->device->host, exe_noerror);
		/*
		 * Increment monotonically increasing per device
		 * successful request counter. Wrapping doesn't matter.
		 */
		boardp->reqcnt[scp->device->id]++;
		FUNC0(1, "ExeScsiQueue() ASC_NOERROR\n");
		break;
	case ASC_BUSY:
		FUNC2(scp->device->host, exe_busy);
		break;
	case ASC_ERROR:
		FUNC9(KERN_ERR, scp, "ExeScsiQueue() ASC_ERROR, "
			"err_code 0x%x\n", err_code);
		FUNC2(scp->device->host, exe_error);
		scp->result = FUNC5(DID_ERROR);
		break;
	default:
		FUNC9(KERN_ERR, scp, "ExeScsiQueue() unknown, "
			"err_code 0x%x\n", err_code);
		FUNC2(scp->device->host, exe_unknown);
		scp->result = FUNC5(DID_ERROR);
		break;
	}

	FUNC0(1, "end\n");
	return ret;
}