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
struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_3__* fcs; int /*<<< orphan*/  timer; int /*<<< orphan*/  ns_retries; TYPE_2__* port; } ;
typedef  enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_7__ {int /*<<< orphan*/  bfa; } ;
struct TYPE_6__ {TYPE_1__* fcs; } ;
struct TYPE_5__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_PORT_TOPOLOGY_LOOP ; 
#define  RPSM_EVENT_ADDRESS_CHANGE 137 
#define  RPSM_EVENT_DELETE 136 
#define  RPSM_EVENT_FAB_SCN 135 
#define  RPSM_EVENT_LOGO_IMP 134 
#define  RPSM_EVENT_LOGO_RCVD 133 
#define  RPSM_EVENT_PLOGI_COMP 132 
#define  RPSM_EVENT_PLOGI_RCVD 131 
#define  RPSM_EVENT_PRLO_RCVD 130 
#define  RPSM_EVENT_SCN_OFFLINE 129 
#define  RPSM_EVENT_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_fcs_rport_del_timeout ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_fc4_fcs_online ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_nsdisc_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_plogi_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_plogiacc_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_uninit ; 
 int /*<<< orphan*/  bfa_fcs_rport_timeout ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC12(struct bfa_fcs_rport_s *rport,
			enum rport_event event)
{
	FUNC11(rport->fcs, rport->pwwn);
	FUNC11(rport->fcs, rport->pid);
	FUNC11(rport->fcs, event);

	switch (event) {
	case RPSM_EVENT_TIMEOUT:
		FUNC8(rport, bfa_fcs_rport_sm_plogi_sending);
		FUNC5(rport, NULL);
		break;

	case RPSM_EVENT_DELETE:
		FUNC8(rport, bfa_fcs_rport_sm_uninit);
		FUNC10(&rport->timer);
		FUNC3(rport);
		break;

	case RPSM_EVENT_PRLO_RCVD:
	case RPSM_EVENT_LOGO_RCVD:
		break;

	case RPSM_EVENT_PLOGI_RCVD:
		FUNC8(rport, bfa_fcs_rport_sm_plogiacc_sending);
		FUNC10(&rport->timer);
		FUNC6(rport, NULL);
		break;

	case RPSM_EVENT_SCN_OFFLINE:
		FUNC8(rport, bfa_fcs_rport_sm_offline);
		FUNC10(&rport->timer);
		FUNC9(rport->fcs->bfa, &rport->timer,
				bfa_fcs_rport_timeout, rport,
				bfa_fcs_rport_del_timeout);
		break;

	case RPSM_EVENT_ADDRESS_CHANGE:
	case RPSM_EVENT_FAB_SCN:
		FUNC10(&rport->timer);
		FUNC0(!(FUNC1(rport->port->fcs->bfa) !=
					BFA_PORT_TOPOLOGY_LOOP));
		FUNC8(rport, bfa_fcs_rport_sm_nsdisc_sending);
		rport->ns_retries = 0;
		FUNC4(rport, NULL);
		break;

	case RPSM_EVENT_LOGO_IMP:
		rport->pid = 0;
		FUNC8(rport, bfa_fcs_rport_sm_offline);
		FUNC10(&rport->timer);
		FUNC9(rport->fcs->bfa, &rport->timer,
				bfa_fcs_rport_timeout, rport,
				bfa_fcs_rport_del_timeout);
		break;

	case RPSM_EVENT_PLOGI_COMP:
		FUNC8(rport, bfa_fcs_rport_sm_fc4_fcs_online);
		FUNC10(&rport->timer);
		FUNC2(rport);
		break;

	default:
		FUNC7(rport->fcs, event);
	}
}