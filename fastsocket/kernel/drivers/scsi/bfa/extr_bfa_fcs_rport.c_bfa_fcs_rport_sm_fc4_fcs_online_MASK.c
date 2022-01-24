#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_1__* fcs; int /*<<< orphan*/  plogi_pending; int /*<<< orphan*/  bfa_rport; int /*<<< orphan*/  scsi_function; } ;
typedef  enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_3__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BFA_RPORT_INITIATOR ; 
 int /*<<< orphan*/  BFA_TRUE ; 
#define  RPSM_EVENT_ADDRESS_CHANGE 137 
#define  RPSM_EVENT_DELETE 136 
#define  RPSM_EVENT_FAB_SCN 135 
#define  RPSM_EVENT_FC4_FCS_ONLINE 134 
#define  RPSM_EVENT_LOGO_IMP 133 
#define  RPSM_EVENT_LOGO_RCVD 132 
#define  RPSM_EVENT_PLOGI_COMP 131 
#define  RPSM_EVENT_PLOGI_RCVD 130 
#define  RPSM_EVENT_PRLO_RCVD 129 
#define  RPSM_EVENT_SCN_OFFLINE 128 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_fc4_logorcv ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_fc4_logosend ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_fc4_offline ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_hal_online ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_online ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC8(struct bfa_fcs_rport_s *rport,
				enum rport_event event)
{
	FUNC7(rport->fcs, rport->pwwn);
	FUNC7(rport->fcs, rport->pid);
	FUNC7(rport->fcs, event);

	switch (event) {
	case RPSM_EVENT_FC4_FCS_ONLINE:
		if (rport->scsi_function == BFA_RPORT_INITIATOR) {
			if (!FUNC0(rport->pid))
				FUNC1(rport);
			FUNC6(rport, bfa_fcs_rport_sm_online);
			break;
		}

		if (!rport->bfa_rport)
			rport->bfa_rport =
				FUNC4(rport->fcs->bfa, rport);

		if (rport->bfa_rport) {
			FUNC6(rport, bfa_fcs_rport_sm_hal_online);
			FUNC3(rport);
		} else {
			FUNC6(rport, bfa_fcs_rport_sm_fc4_logosend);
			FUNC2(rport);
		}
		break;

	case RPSM_EVENT_PLOGI_RCVD:
		FUNC6(rport, bfa_fcs_rport_sm_fc4_offline);
		rport->plogi_pending = BFA_TRUE;
		FUNC2(rport);
		break;

	case RPSM_EVENT_PLOGI_COMP:
	case RPSM_EVENT_LOGO_IMP:
	case RPSM_EVENT_ADDRESS_CHANGE:
	case RPSM_EVENT_FAB_SCN:
	case RPSM_EVENT_SCN_OFFLINE:
		FUNC6(rport, bfa_fcs_rport_sm_fc4_offline);
		FUNC2(rport);
		break;

	case RPSM_EVENT_LOGO_RCVD:
	case RPSM_EVENT_PRLO_RCVD:
		FUNC6(rport, bfa_fcs_rport_sm_fc4_logorcv);
		FUNC2(rport);
		break;

	case RPSM_EVENT_DELETE:
		FUNC6(rport, bfa_fcs_rport_sm_fc4_logosend);
		FUNC2(rport);
		break;

	default:
		FUNC5(rport->fcs, event);
		break;
	}
}