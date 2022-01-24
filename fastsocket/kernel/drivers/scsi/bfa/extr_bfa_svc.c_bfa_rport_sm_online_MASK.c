#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int qos_flow_id; int qos_priority; } ;
struct TYPE_7__ {int qos_flow_id; int qos_priority; } ;
struct bfi_rport_qos_scn_s {TYPE_3__ new_qos_attr; TYPE_2__ old_qos_attr; } ;
struct TYPE_6__ {scalar_t__ fw_msg; } ;
struct bfa_rport_s {int rport_tag; int /*<<< orphan*/  bfa; int /*<<< orphan*/  rport_drv; TYPE_3__ qos_attr; TYPE_1__ event_arg; } ;
typedef  enum bfa_rport_event { ____Placeholder_bfa_rport_event } bfa_rport_event ;

/* Variables and functions */
#define  BFA_RPORT_SM_DELETE 132 
#define  BFA_RPORT_SM_HWFAIL 131 
#define  BFA_RPORT_SM_OFFLINE 130 
#define  BFA_RPORT_SM_QOS_SCN 129 
#define  BFA_RPORT_SM_SET_SPEED 128 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_rport_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_rport_s*) ; 
 int /*<<< orphan*/  bfa_rport_sm_deleting ; 
 int /*<<< orphan*/  bfa_rport_sm_deleting_qfull ; 
 int /*<<< orphan*/  bfa_rport_sm_fwdelete ; 
 int /*<<< orphan*/  bfa_rport_sm_fwdelete_qfull ; 
 int /*<<< orphan*/  bfa_rport_sm_iocdisable ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sm_on_del ; 
 int /*<<< orphan*/  sm_on_hwf ; 
 int /*<<< orphan*/  sm_on_off ; 
 int /*<<< orphan*/  sm_on_unexp ; 

__attribute__((used)) static void
FUNC9(struct bfa_rport_s *rp, enum bfa_rport_event event)
{
	struct bfi_rport_qos_scn_s *qos_scn;

	FUNC8(rp->bfa, rp->rport_tag);
	FUNC8(rp->bfa, event);

	switch (event) {
	case BFA_RPORT_SM_OFFLINE:
		FUNC7(rp, sm_on_off);
		if (FUNC3(rp))
			FUNC6(rp, bfa_rport_sm_fwdelete);
		else
			FUNC6(rp, bfa_rport_sm_fwdelete_qfull);
		break;

	case BFA_RPORT_SM_DELETE:
		FUNC7(rp, sm_on_del);
		if (FUNC3(rp))
			FUNC6(rp, bfa_rport_sm_deleting);
		else
			FUNC6(rp, bfa_rport_sm_deleting_qfull);
		break;

	case BFA_RPORT_SM_HWFAIL:
		FUNC7(rp, sm_on_hwf);
		FUNC6(rp, bfa_rport_sm_iocdisable);
		break;

	case BFA_RPORT_SM_SET_SPEED:
		FUNC4(rp);
		break;

	case BFA_RPORT_SM_QOS_SCN:
		qos_scn = (struct bfi_rport_qos_scn_s *) rp->event_arg.fw_msg;
		rp->qos_attr = qos_scn->new_qos_attr;
		FUNC8(rp->bfa, qos_scn->old_qos_attr.qos_flow_id);
		FUNC8(rp->bfa, qos_scn->new_qos_attr.qos_flow_id);
		FUNC8(rp->bfa, qos_scn->old_qos_attr.qos_priority);
		FUNC8(rp->bfa, qos_scn->new_qos_attr.qos_priority);

		qos_scn->old_qos_attr.qos_flow_id  =
			FUNC0(qos_scn->old_qos_attr.qos_flow_id);
		qos_scn->new_qos_attr.qos_flow_id  =
			FUNC0(qos_scn->new_qos_attr.qos_flow_id);

		if (qos_scn->old_qos_attr.qos_flow_id !=
			qos_scn->new_qos_attr.qos_flow_id)
			FUNC1(rp->rport_drv,
						    qos_scn->old_qos_attr,
						    qos_scn->new_qos_attr);
		if (qos_scn->old_qos_attr.qos_priority !=
			qos_scn->new_qos_attr.qos_priority)
			FUNC2(rp->rport_drv,
						  qos_scn->old_qos_attr,
						  qos_scn->new_qos_attr);
		break;

	default:
		FUNC7(rp, sm_on_unexp);
		FUNC5(rp->bfa, event);
	}
}