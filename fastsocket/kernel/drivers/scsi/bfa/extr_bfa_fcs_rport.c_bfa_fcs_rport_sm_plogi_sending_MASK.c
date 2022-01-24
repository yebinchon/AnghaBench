#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_3__* fcs; int /*<<< orphan*/  timer; int /*<<< orphan*/  fcxp_wqe; int /*<<< orphan*/  ns_retries; TYPE_2__* port; } ;
typedef  enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_7__ {int /*<<< orphan*/  bfa; } ;
struct TYPE_6__ {TYPE_1__* fcs; } ;
struct TYPE_5__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_PORT_TOPOLOGY_LOOP ; 
#define  RPSM_EVENT_ADDRESS_CHANGE 134 
#define  RPSM_EVENT_DELETE 133 
#define  RPSM_EVENT_FAB_SCN 132 
#define  RPSM_EVENT_FCXP_SENT 131 
#define  RPSM_EVENT_LOGO_IMP 130 
#define  RPSM_EVENT_PLOGI_RCVD 129 
#define  RPSM_EVENT_SCN_OFFLINE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_fcs_rport_del_timeout ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_nsdisc_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_plogi ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_plogiacc_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_uninit ; 
 int /*<<< orphan*/  bfa_fcs_rport_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC10(struct bfa_fcs_rport_s *rport,
	 enum rport_event event)
{
	FUNC9(rport->fcs, rport->pwwn);
	FUNC9(rport->fcs, rport->pid);
	FUNC9(rport->fcs, event);

	switch (event) {
	case RPSM_EVENT_FCXP_SENT:
		FUNC7(rport, bfa_fcs_rport_sm_plogi);
		break;

	case RPSM_EVENT_DELETE:
		FUNC7(rport, bfa_fcs_rport_sm_uninit);
		FUNC5(rport->fcs->bfa, &rport->fcxp_wqe);
		FUNC2(rport);
		break;

	case RPSM_EVENT_PLOGI_RCVD:
		FUNC7(rport, bfa_fcs_rport_sm_plogiacc_sending);
		FUNC5(rport->fcs->bfa, &rport->fcxp_wqe);
		FUNC4(rport, NULL);
		break;

	case RPSM_EVENT_SCN_OFFLINE:
		FUNC7(rport, bfa_fcs_rport_sm_offline);
		FUNC5(rport->fcs->bfa, &rport->fcxp_wqe);
		FUNC8(rport->fcs->bfa, &rport->timer,
				bfa_fcs_rport_timeout, rport,
				bfa_fcs_rport_del_timeout);
		break;
	case RPSM_EVENT_ADDRESS_CHANGE:
	case RPSM_EVENT_FAB_SCN:
		/* query the NS */
		FUNC5(rport->fcs->bfa, &rport->fcxp_wqe);
		FUNC0(!(FUNC1(rport->port->fcs->bfa) !=
					BFA_PORT_TOPOLOGY_LOOP));
		FUNC7(rport, bfa_fcs_rport_sm_nsdisc_sending);
		rport->ns_retries = 0;
		FUNC3(rport, NULL);
		break;

	case RPSM_EVENT_LOGO_IMP:
		rport->pid = 0;
		FUNC7(rport, bfa_fcs_rport_sm_offline);
		FUNC5(rport->fcs->bfa, &rport->fcxp_wqe);
		FUNC8(rport->fcs->bfa, &rport->timer,
				bfa_fcs_rport_timeout, rport,
				bfa_fcs_rport_del_timeout);
		break;


	default:
		FUNC6(rport->fcs, event);
	}
}