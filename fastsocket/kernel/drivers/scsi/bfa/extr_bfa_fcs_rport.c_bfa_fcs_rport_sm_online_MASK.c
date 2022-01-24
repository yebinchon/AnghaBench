#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bfa_fcs_rport_s {int pwwn; int pid; int /*<<< orphan*/  fcs; int /*<<< orphan*/  ns_retries; TYPE_1__* port; } ;
typedef  enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_2__ {int /*<<< orphan*/  fabric; } ;

/* Variables and functions */
#define  RPSM_EVENT_ADDRESS_CHANGE 137 
#define  RPSM_EVENT_DELETE 136 
#define  RPSM_EVENT_FAB_SCN 135 
#define  RPSM_EVENT_LOGO_IMP 134 
#define  RPSM_EVENT_LOGO_RCVD 133 
#define  RPSM_EVENT_PLOGI_COMP 132 
#define  RPSM_EVENT_PLOGI_RCVD 131 
#define  RPSM_EVENT_PRLO_RCVD 130 
#define  RPSM_EVENT_SCN_OFFLINE 129 
#define  RPSM_EVENT_SCN_ONLINE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_adisc_online_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_fc4_logorcv ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_fc4_logosend ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_fc4_offline ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_nsquery_sending ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct bfa_fcs_rport_s *rport, enum rport_event event)
{
	FUNC6(rport->fcs, rport->pwwn);
	FUNC6(rport->fcs, rport->pid);
	FUNC6(rport->fcs, event);

	switch (event) {
	case RPSM_EVENT_FAB_SCN:
		if (FUNC0(rport->port->fabric)) {
			FUNC5(rport,
					 bfa_fcs_rport_sm_nsquery_sending);
			rport->ns_retries = 0;
			FUNC3(rport, NULL);
		} else {
			FUNC5(rport,
				bfa_fcs_rport_sm_adisc_online_sending);
			FUNC2(rport, NULL);
		}
		break;

	case RPSM_EVENT_PLOGI_RCVD:
	case RPSM_EVENT_LOGO_IMP:
	case RPSM_EVENT_ADDRESS_CHANGE:
	case RPSM_EVENT_SCN_OFFLINE:
		FUNC5(rport, bfa_fcs_rport_sm_fc4_offline);
		FUNC1(rport);
		break;

	case RPSM_EVENT_DELETE:
		FUNC5(rport, bfa_fcs_rport_sm_fc4_logosend);
		FUNC1(rport);
		break;

	case RPSM_EVENT_LOGO_RCVD:
	case RPSM_EVENT_PRLO_RCVD:
		FUNC5(rport, bfa_fcs_rport_sm_fc4_logorcv);
		FUNC1(rport);
		break;

	case RPSM_EVENT_SCN_ONLINE:
	case RPSM_EVENT_PLOGI_COMP:
		break;

	default:
		FUNC4(rport->fcs, event);
	}
}