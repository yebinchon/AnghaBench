#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int bb_rcv_sz; } ;
struct TYPE_5__ {int* class1_parms; int* class2_parms; int* class3_parms; TYPE_1__ common; } ;
struct ibmvfc_target {scalar_t__ action; TYPE_2__ service_parms; int /*<<< orphan*/  target_id; struct fc_rport* rport; int /*<<< orphan*/  kref; int /*<<< orphan*/  timer; int /*<<< orphan*/  queue; int /*<<< orphan*/  ids; struct ibmvfc_host* vhost; } ;
struct ibmvfc_host {TYPE_3__* host; } ;
struct fc_rport {int maxframe_size; scalar_t__ rqst_q; int /*<<< orphan*/  supported_classes; int /*<<< orphan*/  scsi_target_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_COS_CLASS1 ; 
 int /*<<< orphan*/  FC_COS_CLASS2 ; 
 int /*<<< orphan*/  FC_COS_CLASS3 ; 
 scalar_t__ IBMVFC_TGT_ACTION_DELETED_RPORT ; 
 scalar_t__ IBMVFC_TGT_ACTION_DEL_RPORT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fc_rport* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_rport*) ; 
 int /*<<< orphan*/  ibmvfc_release_tgt ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvfc_target*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct ibmvfc_target*,char*) ; 

__attribute__((used)) static void FUNC10(struct ibmvfc_target *tgt)
{
	struct ibmvfc_host *vhost = tgt->vhost;
	struct fc_rport *rport;
	unsigned long flags;

	FUNC9(tgt, "Adding rport\n");
	rport = FUNC2(vhost->host, 0, &tgt->ids);
	FUNC7(vhost->host->host_lock, flags);

	if (rport && tgt->action == IBMVFC_TGT_ACTION_DEL_RPORT) {
		FUNC9(tgt, "Deleting rport\n");
		FUNC6(&tgt->queue);
		FUNC4(tgt, IBMVFC_TGT_ACTION_DELETED_RPORT);
		FUNC8(vhost->host->host_lock, flags);
		FUNC3(rport);
		FUNC1(&tgt->timer);
		FUNC5(&tgt->kref, ibmvfc_release_tgt);
		return;
	} else if (rport && tgt->action == IBMVFC_TGT_ACTION_DELETED_RPORT) {
		FUNC8(vhost->host->host_lock, flags);
		return;
	}

	if (rport) {
		FUNC9(tgt, "rport add succeeded\n");
		tgt->rport = rport;
		rport->maxframe_size = tgt->service_parms.common.bb_rcv_sz & 0x0fff;
		rport->supported_classes = 0;
		tgt->target_id = rport->scsi_target_id;
		if (tgt->service_parms.class1_parms[0] & 0x80000000)
			rport->supported_classes |= FC_COS_CLASS1;
		if (tgt->service_parms.class2_parms[0] & 0x80000000)
			rport->supported_classes |= FC_COS_CLASS2;
		if (tgt->service_parms.class3_parms[0] & 0x80000000)
			rport->supported_classes |= FC_COS_CLASS3;
		if (rport->rqst_q)
			FUNC0(rport->rqst_q, 1);
	} else
		FUNC9(tgt, "rport add failed\n");
	FUNC8(vhost->host->host_lock, flags);
}