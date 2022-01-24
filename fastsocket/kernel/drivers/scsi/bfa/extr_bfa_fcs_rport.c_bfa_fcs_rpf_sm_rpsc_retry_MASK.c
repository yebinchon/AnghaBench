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
struct bfa_fcs_rport_s {int pid; int /*<<< orphan*/  fcs; } ;
struct bfa_fcs_rpf_s {int /*<<< orphan*/  rpsc_retries; int /*<<< orphan*/  timer; struct bfa_fcs_rport_s* rport; } ;
typedef  enum rpf_event { ____Placeholder_rpf_event } rpf_event ;

/* Variables and functions */
#define  RPFSM_EVENT_RPORT_OFFLINE 129 
#define  RPFSM_EVENT_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rpf_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_rpf_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_rpf_sm_rpsc_sending ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_rpf_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct bfa_fcs_rpf_s *rpf, enum rpf_event event)
{
	struct bfa_fcs_rport_s *rport = rpf->rport;

	FUNC4(rport->fcs, rport->pid);
	FUNC4(rport->fcs, event);

	switch (event) {
	case RPFSM_EVENT_TIMEOUT:
		/* re-send the RPSC */
		FUNC2(rpf, bfa_fcs_rpf_sm_rpsc_sending);
		FUNC0(rpf, NULL);
		break;

	case RPFSM_EVENT_RPORT_OFFLINE:
		FUNC3(&rpf->timer);
		FUNC2(rpf, bfa_fcs_rpf_sm_offline);
		rpf->rpsc_retries = 0;
		break;

	default:
		FUNC1(rport->fcs, event);
	}
}