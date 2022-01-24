#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ibmvfc_target {int /*<<< orphan*/  kref; int /*<<< orphan*/  scsi_id; int /*<<< orphan*/  new_scsi_id; } ;
struct TYPE_4__ {int status; } ;
struct ibmvfc_query_tgt {int status; int /*<<< orphan*/  fc_explain; int /*<<< orphan*/  fc_type; int /*<<< orphan*/  error; int /*<<< orphan*/  scsi_id; TYPE_2__ common; } ;
struct ibmvfc_host {int /*<<< orphan*/  work_wait_q; int /*<<< orphan*/  discovery_threads; } ;
struct ibmvfc_event {TYPE_1__* xfer_iu; struct ibmvfc_host* vhost; struct ibmvfc_target* tgt; } ;
struct TYPE_3__ {struct ibmvfc_query_tgt query_tgt; } ;

/* Variables and functions */
 int IBMVFC_DEFAULT_LOG_LEVEL ; 
 int IBMVFC_FABRIC_MAPPED ; 
#define  IBMVFC_MAD_CRQ_ERROR 131 
#define  IBMVFC_MAD_DRIVER_FAILED 130 
#define  IBMVFC_MAD_FAILED 129 
#define  IBMVFC_MAD_SUCCESS 128 
 int /*<<< orphan*/  IBMVFC_PORT_NAME_NOT_REG ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_DEL_RPORT ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_NONE ; 
 int /*<<< orphan*/  IBMVFC_UNABLE_TO_PERFORM_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_release_tgt ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_tgt_adisc ; 
 int /*<<< orphan*/  ibmvfc_tgt_implicit_logout ; 
 int /*<<< orphan*/  ibmvfc_tgt_query_target ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ibmvfc_target*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ibmvfc_target*,int,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct ibmvfc_event *evt)
{
	struct ibmvfc_target *tgt = evt->tgt;
	struct ibmvfc_host *vhost = evt->vhost;
	struct ibmvfc_query_tgt *rsp = &evt->xfer_iu->query_tgt;
	u32 status = rsp->common.status;
	int level = IBMVFC_DEFAULT_LOG_LEVEL;

	vhost->discovery_threads--;
	FUNC7(tgt, IBMVFC_TGT_ACTION_NONE);
	switch (status) {
	case IBMVFC_MAD_SUCCESS:
		FUNC9(tgt, "Query Target succeeded\n");
		tgt->new_scsi_id = rsp->scsi_id;
		if (rsp->scsi_id != tgt->scsi_id)
			FUNC4(tgt, ibmvfc_tgt_implicit_logout);
		else
			FUNC4(tgt, ibmvfc_tgt_adisc);
		break;
	case IBMVFC_MAD_DRIVER_FAILED:
		break;
	case IBMVFC_MAD_CRQ_ERROR:
		FUNC6(tgt, ibmvfc_tgt_query_target);
		break;
	case IBMVFC_MAD_FAILED:
	default:
		if ((rsp->status & IBMVFC_FABRIC_MAPPED) == IBMVFC_FABRIC_MAPPED &&
		    rsp->error == IBMVFC_UNABLE_TO_PERFORM_REQ &&
		    rsp->fc_explain == IBMVFC_PORT_NAME_NOT_REG)
			FUNC7(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
		else if (FUNC5(rsp->status, rsp->error))
			level += FUNC6(tgt, ibmvfc_tgt_query_target);
		else
			FUNC7(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);

		FUNC10(tgt, level, "Query Target failed: %s (%x:%x) %s (%x) %s (%x) rc=0x%02X\n",
			FUNC1(rsp->status, rsp->error), rsp->status, rsp->error,
			FUNC2(rsp->fc_type), rsp->fc_type,
			FUNC3(rsp->fc_explain), rsp->fc_explain, status);
		break;
	};

	FUNC8(&tgt->kref, ibmvfc_release_tgt);
	FUNC0(evt);
	FUNC11(&vhost->work_wait_q);
}