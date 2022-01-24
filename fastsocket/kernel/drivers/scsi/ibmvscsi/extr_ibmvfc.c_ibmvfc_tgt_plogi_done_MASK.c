#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {void* port_name; int /*<<< orphan*/  port_id; void* node_name; } ;
struct ibmvfc_target {int /*<<< orphan*/  kref; int /*<<< orphan*/  service_parms_change; int /*<<< orphan*/  service_parms; int /*<<< orphan*/  scsi_id; TYPE_3__ ids; } ;
struct TYPE_8__ {int /*<<< orphan*/  port_name; int /*<<< orphan*/  node_name; } ;
struct TYPE_6__ {int status; } ;
struct ibmvfc_port_login {int /*<<< orphan*/  fc_explain; int /*<<< orphan*/  fc_type; int /*<<< orphan*/  error; int /*<<< orphan*/  status; TYPE_4__ service_parms_change; TYPE_4__ service_parms; TYPE_2__ common; } ;
struct ibmvfc_host {int reinit; int /*<<< orphan*/  work_wait_q; int /*<<< orphan*/  discovery_threads; } ;
struct ibmvfc_event {TYPE_1__* xfer_iu; struct ibmvfc_host* vhost; struct ibmvfc_target* tgt; } ;
struct TYPE_5__ {struct ibmvfc_port_login plogi; } ;

/* Variables and functions */
 int IBMVFC_DEFAULT_LOG_LEVEL ; 
#define  IBMVFC_MAD_CRQ_ERROR 131 
#define  IBMVFC_MAD_DRIVER_FAILED 130 
#define  IBMVFC_MAD_FAILED 129 
#define  IBMVFC_MAD_SUCCESS 128 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_DEL_RPORT ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_release_tgt ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_tgt_send_plogi ; 
 int /*<<< orphan*/  ibmvfc_tgt_send_prli ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ibmvfc_target*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ibmvfc_target*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct ibmvfc_event *evt)
{
	struct ibmvfc_target *tgt = evt->tgt;
	struct ibmvfc_host *vhost = evt->vhost;
	struct ibmvfc_port_login *rsp = &evt->xfer_iu->plogi;
	u32 status = rsp->common.status;
	int level = IBMVFC_DEFAULT_LOG_LEVEL;

	vhost->discovery_threads--;
	FUNC7(tgt, IBMVFC_TGT_ACTION_NONE);
	switch (status) {
	case IBMVFC_MAD_SUCCESS:
		FUNC10(tgt, "Port Login succeeded\n");
		if (tgt->ids.port_name &&
		    tgt->ids.port_name != FUNC13(rsp->service_parms.port_name)) {
			vhost->reinit = 1;
			FUNC10(tgt, "Port re-init required\n");
			break;
		}
		tgt->ids.node_name = FUNC13(rsp->service_parms.node_name);
		tgt->ids.port_name = FUNC13(rsp->service_parms.port_name);
		tgt->ids.port_id = tgt->scsi_id;
		FUNC9(&tgt->service_parms, &rsp->service_parms,
		       sizeof(tgt->service_parms));
		FUNC9(&tgt->service_parms_change, &rsp->service_parms_change,
		       sizeof(tgt->service_parms_change));
		FUNC4(tgt, ibmvfc_tgt_send_prli);
		break;
	case IBMVFC_MAD_DRIVER_FAILED:
		break;
	case IBMVFC_MAD_CRQ_ERROR:
		FUNC6(tgt, ibmvfc_tgt_send_plogi);
		break;
	case IBMVFC_MAD_FAILED:
	default:
		if (FUNC5(rsp->status, rsp->error))
			level += FUNC6(tgt, ibmvfc_tgt_send_plogi);
		else
			FUNC7(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);

		FUNC11(tgt, level, "Port Login failed: %s (%x:%x) %s (%x) %s (%x) rc=0x%02X\n",
			FUNC1(rsp->status, rsp->error), rsp->status, rsp->error,
			FUNC2(rsp->fc_type), rsp->fc_type,
			FUNC3(rsp->fc_explain), rsp->fc_explain, status);
		break;
	};

	FUNC8(&tgt->kref, ibmvfc_release_tgt);
	FUNC0(evt);
	FUNC12(&vhost->work_wait_q);
}