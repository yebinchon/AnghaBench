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
struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_1__* fcs; int /*<<< orphan*/  fcxp_wqe; int /*<<< orphan*/  timer; } ;
typedef  enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_3__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
#define  RPSM_EVENT_DELETE 134 
#define  RPSM_EVENT_FCXP_SENT 133 
#define  RPSM_EVENT_LOGO_IMP 132 
#define  RPSM_EVENT_LOGO_RCVD 131 
#define  RPSM_EVENT_PLOGI_RCVD 130 
#define  RPSM_EVENT_PRLO_RCVD 129 
#define  RPSM_EVENT_SCN_OFFLINE 128 
 int /*<<< orphan*/  bfa_fcs_rport_del_timeout ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_adisc_offline ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_plogiacc_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_timeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC6(struct bfa_fcs_rport_s *rport,
	enum rport_event event)
{
	FUNC5(rport->fcs, rport->pwwn);
	FUNC5(rport->fcs, rport->pid);
	FUNC5(rport->fcs, event);

	switch (event) {
	case RPSM_EVENT_FCXP_SENT:
		FUNC3(rport, bfa_fcs_rport_sm_adisc_offline);
		break;

	case RPSM_EVENT_DELETE:
	case RPSM_EVENT_SCN_OFFLINE:
	case RPSM_EVENT_LOGO_IMP:
	case RPSM_EVENT_LOGO_RCVD:
	case RPSM_EVENT_PRLO_RCVD:
		FUNC3(rport, bfa_fcs_rport_sm_offline);
		FUNC1(rport->fcs->bfa,
			&rport->fcxp_wqe);
		FUNC4(rport->fcs->bfa, &rport->timer,
			bfa_fcs_rport_timeout, rport,
			bfa_fcs_rport_del_timeout);
		break;

	case RPSM_EVENT_PLOGI_RCVD:
		FUNC3(rport, bfa_fcs_rport_sm_plogiacc_sending);
		FUNC1(rport->fcs->bfa, &rport->fcxp_wqe);
		FUNC0(rport, NULL);
		break;

	default:
		FUNC2(rport->fcs, event);
	}
}