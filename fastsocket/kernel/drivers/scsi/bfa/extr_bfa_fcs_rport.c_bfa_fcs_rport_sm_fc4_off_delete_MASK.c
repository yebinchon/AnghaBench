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
struct bfa_fcs_rport_s {int pwwn; int pid; int /*<<< orphan*/  fcs; } ;
typedef  enum rport_event { ____Placeholder_rport_event } rport_event ;

/* Variables and functions */
#define  RPSM_EVENT_DELETE 130 
#define  RPSM_EVENT_FC4_OFFLINE 129 
#define  RPSM_EVENT_PLOGI_RCVD 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_rport_sm_delete_pending ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct bfa_fcs_rport_s *rport,
				enum rport_event event)
{
	FUNC3(rport->fcs, rport->pwwn);
	FUNC3(rport->fcs, rport->pid);
	FUNC3(rport->fcs, event);

	switch (event) {
	case RPSM_EVENT_FC4_OFFLINE:
		FUNC2(rport, bfa_fcs_rport_sm_delete_pending);
		FUNC0(rport);
		break;

	case RPSM_EVENT_DELETE:
	case RPSM_EVENT_PLOGI_RCVD:
		/* Ignore these events */
		break;

	default:
		FUNC1(rport->fcs, event);
		break;
	}
}