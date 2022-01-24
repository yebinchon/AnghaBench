#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_4__* fcs; TYPE_3__* port; } ;
struct bfa_fcs_rpf_s {int /*<<< orphan*/  rpsc_retries; struct bfa_fcs_rport_s* rport; } ;
struct bfa_fcs_fabric_s {int dummy; } ;
typedef  enum rpf_event { ____Placeholder_rpf_event } rpf_event ;
struct TYPE_9__ {struct bfa_fcs_fabric_s fabric; } ;
struct TYPE_8__ {TYPE_2__* fabric; } ;
struct TYPE_7__ {TYPE_1__* lps; } ;
struct TYPE_6__ {int /*<<< orphan*/  brcd_switch; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCS_BRCD_SWITCH_OUI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  RPFSM_EVENT_RPORT_OFFLINE 129 
#define  RPFSM_EVENT_RPORT_ONLINE 128 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_fabric_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_rpf_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_rpf_sm_rpsc_sending ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_rpf_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 

__attribute__((used)) static void
FUNC6(struct bfa_fcs_rpf_s *rpf, enum rpf_event event)
{
	struct bfa_fcs_rport_s *rport = rpf->rport;
	struct bfa_fcs_fabric_s *fabric = &rport->fcs->fabric;

	FUNC5(rport->fcs, rport->pwwn);
	FUNC5(rport->fcs, rport->pid);
	FUNC5(rport->fcs, event);

	switch (event) {
	case RPFSM_EVENT_RPORT_ONLINE:
		/* Send RPSC2 to a Brocade fabric only. */
		if ((!FUNC0(rport->pid)) &&
			((rport->port->fabric->lps->brcd_switch) ||
			(FUNC1(fabric) ==
						BFA_FCS_BRCD_SWITCH_OUI))) {
			FUNC4(rpf, bfa_fcs_rpf_sm_rpsc_sending);
			rpf->rpsc_retries = 0;
			FUNC2(rpf, NULL);
		}
		break;

	case RPFSM_EVENT_RPORT_OFFLINE:
		break;

	default:
		FUNC3(rport->fcs, event);
	}
}