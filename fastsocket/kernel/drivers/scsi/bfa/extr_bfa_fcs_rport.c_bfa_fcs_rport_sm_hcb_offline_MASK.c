#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_2__* fcs; int /*<<< orphan*/  plogi_retries; int /*<<< orphan*/  timer; int /*<<< orphan*/  scn_online; TYPE_4__* port; int /*<<< orphan*/  ns_retries; int /*<<< orphan*/  plogi_pending; } ;
typedef  enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_7__ {TYPE_1__* fcs; int /*<<< orphan*/  fabric; } ;
struct TYPE_6__ {int /*<<< orphan*/  bfa; } ;
struct TYPE_5__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_PORT_TOPOLOGY_LOOP ; 
#define  RPSM_EVENT_ADDRESS_CHANGE 137 
#define  RPSM_EVENT_DELETE 136 
#define  RPSM_EVENT_FAB_SCN 135 
#define  RPSM_EVENT_HCB_OFFLINE 134 
#define  RPSM_EVENT_LOGO_IMP 133 
#define  RPSM_EVENT_LOGO_RCVD 132 
#define  RPSM_EVENT_PLOGI_RCVD 131 
#define  RPSM_EVENT_PRLO_RCVD 130 
#define  RPSM_EVENT_SCN_OFFLINE 129 
#define  RPSM_EVENT_SCN_ONLINE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  bfa_fcs_rport_del_timeout ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_adisc_offline_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_nsdisc_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_plogi_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_plogiacc_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_uninit ; 
 int /*<<< orphan*/  bfa_fcs_rport_timeout ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC12(struct bfa_fcs_rport_s *rport,
				enum rport_event event)
{
	FUNC11(rport->fcs, rport->pwwn);
	FUNC11(rport->fcs, rport->pid);
	FUNC11(rport->fcs, event);

	switch (event) {
	case RPSM_EVENT_HCB_OFFLINE:
		if (FUNC2(rport->port) &&
		    (rport->plogi_pending)) {
			rport->plogi_pending = BFA_FALSE;
			FUNC9(rport,
				bfa_fcs_rport_sm_plogiacc_sending);
			FUNC7(rport, NULL);
			break;
		}
		/*
		 * !! fall through !!
		 */

	case RPSM_EVENT_ADDRESS_CHANGE:
		if (!FUNC2(rport->port)) {
			rport->pid = 0;
			FUNC9(rport, bfa_fcs_rport_sm_offline);
			FUNC10(rport->fcs->bfa, &rport->timer,
					bfa_fcs_rport_timeout, rport,
					bfa_fcs_rport_del_timeout);
			break;
		}
		if (FUNC1(rport->port->fabric)) {
			FUNC9(rport,
				bfa_fcs_rport_sm_nsdisc_sending);
			rport->ns_retries = 0;
			FUNC5(rport, NULL);
		} else if (FUNC0(rport->port->fcs->bfa) ==
					BFA_PORT_TOPOLOGY_LOOP) {
			if (rport->scn_online) {
				FUNC9(rport,
					bfa_fcs_rport_sm_adisc_offline_sending);
				FUNC4(rport, NULL);
			} else {
				FUNC9(rport,
					bfa_fcs_rport_sm_offline);
				FUNC10(rport->fcs->bfa, &rport->timer,
					bfa_fcs_rport_timeout, rport,
					bfa_fcs_rport_del_timeout);
			}
		} else {
			FUNC9(rport, bfa_fcs_rport_sm_plogi_sending);
			rport->plogi_retries = 0;
			FUNC6(rport, NULL);
		}
		break;

	case RPSM_EVENT_DELETE:
		FUNC9(rport, bfa_fcs_rport_sm_uninit);
		FUNC3(rport);
		break;

	case RPSM_EVENT_SCN_ONLINE:
	case RPSM_EVENT_SCN_OFFLINE:
	case RPSM_EVENT_FAB_SCN:
	case RPSM_EVENT_LOGO_RCVD:
	case RPSM_EVENT_PRLO_RCVD:
	case RPSM_EVENT_PLOGI_RCVD:
	case RPSM_EVENT_LOGO_IMP:
		/*
		 * Ignore, already offline.
		 */
		break;

	default:
		FUNC8(rport->fcs, event);
	}
}