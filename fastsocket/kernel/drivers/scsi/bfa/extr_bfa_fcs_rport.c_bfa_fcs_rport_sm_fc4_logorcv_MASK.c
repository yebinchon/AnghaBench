#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bfa_fcs_rport_s {int pwwn; int pid; int /*<<< orphan*/  fcs; int /*<<< orphan*/  prlo; } ;
typedef  enum rport_event { ____Placeholder_rport_event } rport_event ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_TRUE ; 
#define  RPSM_EVENT_ADDRESS_CHANGE 135 
#define  RPSM_EVENT_DELETE 134 
#define  RPSM_EVENT_FC4_OFFLINE 133 
#define  RPSM_EVENT_HCB_ONLINE 132 
#define  RPSM_EVENT_LOGO_RCVD 131 
#define  RPSM_EVENT_PRLO_RCVD 130 
#define  RPSM_EVENT_SCN_OFFLINE 129 
#define  RPSM_EVENT_SCN_ONLINE 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_fc4_off_delete ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_hcb_logorcv ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct bfa_fcs_rport_s *rport,
			enum rport_event event)
{
	FUNC5(rport->fcs, rport->pwwn);
	FUNC5(rport->fcs, rport->pid);
	FUNC5(rport->fcs, event);

	switch (event) {
	case RPSM_EVENT_FC4_OFFLINE:
		FUNC4(rport, bfa_fcs_rport_sm_hcb_logorcv);
		FUNC0(rport);
		break;

	case RPSM_EVENT_DELETE:
		if (rport->pid && (rport->prlo == BFA_TRUE))
			FUNC2(rport);
		if (rport->pid && (rport->prlo == BFA_FALSE))
			FUNC1(rport);

		FUNC4(rport, bfa_fcs_rport_sm_fc4_off_delete);
		break;

	case RPSM_EVENT_SCN_ONLINE:
	case RPSM_EVENT_SCN_OFFLINE:
	case RPSM_EVENT_HCB_ONLINE:
	case RPSM_EVENT_LOGO_RCVD:
	case RPSM_EVENT_PRLO_RCVD:
	case RPSM_EVENT_ADDRESS_CHANGE:
		break;

	default:
		FUNC3(rport->fcs, event);
	}
}