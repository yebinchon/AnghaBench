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
struct bfa_fcs_rport_s {int pwwn; int pid; int /*<<< orphan*/  fcs; int /*<<< orphan*/  ns_retries; int /*<<< orphan*/  plogi_retries; } ;
typedef  enum rport_event { ____Placeholder_rport_event } rport_event ;

/* Variables and functions */
#define  RPSM_EVENT_ADDRESS_CHANGE 132 
#define  RPSM_EVENT_ADDRESS_DISC 131 
#define  RPSM_EVENT_PLOGI_COMP 130 
#define  RPSM_EVENT_PLOGI_RCVD 129 
#define  RPSM_EVENT_PLOGI_SEND 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_hal_online ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_nsdisc_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_plogi_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_plogiacc_sending ; 
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
	case RPSM_EVENT_PLOGI_SEND:
		FUNC5(rport, bfa_fcs_rport_sm_plogi_sending);
		rport->plogi_retries = 0;
		FUNC2(rport, NULL);
		break;

	case RPSM_EVENT_PLOGI_RCVD:
		FUNC5(rport, bfa_fcs_rport_sm_plogiacc_sending);
		FUNC3(rport, NULL);
		break;

	case RPSM_EVENT_PLOGI_COMP:
		FUNC5(rport, bfa_fcs_rport_sm_hal_online);
		FUNC0(rport);
		break;

	case RPSM_EVENT_ADDRESS_CHANGE:
	case RPSM_EVENT_ADDRESS_DISC:
		FUNC5(rport, bfa_fcs_rport_sm_nsdisc_sending);
		rport->ns_retries = 0;
		FUNC1(rport, NULL);
		break;
	default:
		FUNC4(rport->fcs, event);
	}
}