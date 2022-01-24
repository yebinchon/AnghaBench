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
typedef  int u8 ;
typedef  int u32 ;
struct ibmvfc_target {int /*<<< orphan*/  kref; int /*<<< orphan*/  timer; } ;
struct TYPE_8__ {int /*<<< orphan*/  error; int /*<<< orphan*/  status; } ;
struct TYPE_7__ {int* response; } ;
struct TYPE_6__ {int status; } ;
struct ibmvfc_passthru_mad {TYPE_4__ iu; TYPE_3__ fc_iu; TYPE_2__ common; } ;
struct ibmvfc_host {int /*<<< orphan*/  work_wait_q; int /*<<< orphan*/  discovery_threads; } ;
struct ibmvfc_event {TYPE_1__* xfer_iu; struct ibmvfc_host* vhost; struct ibmvfc_target* tgt; } ;
struct TYPE_5__ {struct ibmvfc_passthru_mad passthru; } ;

/* Variables and functions */
#define  IBMVFC_MAD_DRIVER_FAILED 130 
#define  IBMVFC_MAD_FAILED 129 
#define  IBMVFC_MAD_SUCCESS 128 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_DEL_RPORT ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvfc_passthru_mad*,struct ibmvfc_target*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  ibmvfc_release_tgt ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ibmvfc_target*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ibmvfc_target*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct ibmvfc_event *evt)
{
	struct ibmvfc_target *tgt = evt->tgt;
	struct ibmvfc_host *vhost = evt->vhost;
	struct ibmvfc_passthru_mad *mad = &evt->xfer_iu->passthru;
	u32 status = mad->common.status;
	u8 fc_reason, fc_explain;

	vhost->discovery_threads--;
	FUNC6(tgt, IBMVFC_TGT_ACTION_NONE);
	FUNC0(&tgt->timer);

	switch (status) {
	case IBMVFC_MAD_SUCCESS:
		FUNC8(tgt, "ADISC succeeded\n");
		if (FUNC1(mad, tgt))
			FUNC6(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
		break;
	case IBMVFC_MAD_DRIVER_FAILED:
		break;
	case IBMVFC_MAD_FAILED:
	default:
		FUNC6(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
		fc_reason = (mad->fc_iu.response[1] & 0x00ff0000) >> 16;
		fc_explain = (mad->fc_iu.response[1] & 0x0000ff00) >> 8;
		FUNC9(tgt, "ADISC failed: %s (%x:%x) %s (%x) %s (%x) rc=0x%02X\n",
			 FUNC3(mad->iu.status, mad->iu.error),
			 mad->iu.status, mad->iu.error,
			 FUNC4(fc_reason), fc_reason,
			 FUNC5(fc_explain), fc_explain, status);
		break;
	};

	FUNC7(&tgt->kref, ibmvfc_release_tgt);
	FUNC2(evt);
	FUNC10(&vhost->work_wait_q);
}