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
struct bfa_fcs_lport_scn_s {int /*<<< orphan*/  fcxp; int /*<<< orphan*/  timer; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {TYPE_1__* fcs; } ;
typedef  enum port_scn_event { ____Placeholder_port_scn_event } port_scn_event ;
struct TYPE_2__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCS_RETRY_TIMEOUT ; 
#define  SCNSM_EVENT_PORT_OFFLINE 130 
#define  SCNSM_EVENT_RSP_ERROR 129 
#define  SCNSM_EVENT_RSP_OK 128 
 int /*<<< orphan*/  bfa_fcs_lport_scn_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_lport_scn_sm_online ; 
 int /*<<< orphan*/  bfa_fcs_lport_scn_sm_scr_retry ; 
 int /*<<< orphan*/  bfa_fcs_lport_scn_timeout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_lport_scn_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_lport_scn_s*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfa_fcs_lport_scn_s *scn,
			enum port_scn_event event)
{
	struct bfa_fcs_lport_s *port = scn->port;

	switch (event) {
	case SCNSM_EVENT_RSP_OK:
		FUNC2(scn, bfa_fcs_lport_scn_sm_online);
		break;

	case SCNSM_EVENT_RSP_ERROR:
		FUNC2(scn, bfa_fcs_lport_scn_sm_scr_retry);
		FUNC3(port->fcs->bfa, &scn->timer,
				    bfa_fcs_lport_scn_timeout, scn,
				    BFA_FCS_RETRY_TIMEOUT);
		break;

	case SCNSM_EVENT_PORT_OFFLINE:
		FUNC2(scn, bfa_fcs_lport_scn_sm_offline);
		FUNC0(scn->fcxp);
		break;

	default:
		FUNC1(port->fcs, event);
	}
}