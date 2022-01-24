#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_1__* fcs; int /*<<< orphan*/  prlo; int /*<<< orphan*/  timer; int /*<<< orphan*/  plogi_retries; int /*<<< orphan*/  ns_retries; TYPE_3__* port; } ;
typedef  enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_5__ {int /*<<< orphan*/  fabric; } ;
struct TYPE_4__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BFA_TRUE ; 
#define  RPSM_EVENT_ADDRESS_CHANGE 135 
#define  RPSM_EVENT_DELETE 134 
#define  RPSM_EVENT_HCB_OFFLINE 133 
#define  RPSM_EVENT_LOGO_IMP 132 
#define  RPSM_EVENT_LOGO_RCVD 131 
#define  RPSM_EVENT_PRLO_RCVD 130 
#define  RPSM_EVENT_SCN_OFFLINE 129 
#define  RPSM_EVENT_SCN_ONLINE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  bfa_fcs_rport_del_timeout ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_delete_pending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_hcb_offline ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_nsdisc_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_plogi_sending ; 
 int /*<<< orphan*/  bfa_fcs_rport_timeout ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC11(struct bfa_fcs_rport_s *rport,
			enum rport_event event)
{
	FUNC10(rport->fcs, rport->pwwn);
	FUNC10(rport->fcs, rport->pid);
	FUNC10(rport->fcs, event);

	switch (event) {
	case RPSM_EVENT_HCB_OFFLINE:
	case RPSM_EVENT_ADDRESS_CHANGE:
		if (rport->pid && (rport->prlo == BFA_TRUE))
			FUNC6(rport);
		if (rport->pid && (rport->prlo == BFA_FALSE))
			FUNC3(rport);
		/*
		 * If the lport is online and if the rport is not a well
		 * known address port,
		 * we try to re-discover the r-port.
		 */
		if (FUNC2(rport->port) &&
			(!FUNC0(rport->pid))) {
			if (FUNC1(rport->port->fabric)) {
				FUNC8(rport,
					bfa_fcs_rport_sm_nsdisc_sending);
				rport->ns_retries = 0;
				FUNC4(rport, NULL);
			} else {
				/* For N2N  Direct Attach, try to re-login */
				FUNC8(rport,
					bfa_fcs_rport_sm_plogi_sending);
				rport->plogi_retries = 0;
				FUNC5(rport, NULL);
			}
		} else {
			/*
			 * if it is not a well known address, reset the
			 * pid to 0.
			 */
			if (!FUNC0(rport->pid))
				rport->pid = 0;
			FUNC8(rport, bfa_fcs_rport_sm_offline);
			FUNC9(rport->fcs->bfa, &rport->timer,
					bfa_fcs_rport_timeout, rport,
					bfa_fcs_rport_del_timeout);
		}
		break;

	case RPSM_EVENT_DELETE:
		FUNC8(rport, bfa_fcs_rport_sm_delete_pending);
		if (rport->pid && (rport->prlo == BFA_TRUE))
			FUNC6(rport);
		if (rport->pid && (rport->prlo == BFA_FALSE))
			FUNC3(rport);
		break;

	case RPSM_EVENT_LOGO_IMP:
		FUNC8(rport, bfa_fcs_rport_sm_hcb_offline);
		break;

	case RPSM_EVENT_SCN_ONLINE:
	case RPSM_EVENT_SCN_OFFLINE:
	case RPSM_EVENT_LOGO_RCVD:
	case RPSM_EVENT_PRLO_RCVD:
		/*
		 * Ignore - already processing a LOGO.
		 */
		break;

	default:
		FUNC7(rport->fcs, event);
	}
}