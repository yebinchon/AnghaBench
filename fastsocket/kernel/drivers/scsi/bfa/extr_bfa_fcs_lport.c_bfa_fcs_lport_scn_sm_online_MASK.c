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
struct bfa_fcs_lport_scn_s {TYPE_1__* port; } ;
typedef  enum port_scn_event { ____Placeholder_port_scn_event } port_scn_event ;
struct TYPE_2__ {int /*<<< orphan*/  fcs; } ;

/* Variables and functions */
#define  SCNSM_EVENT_PORT_OFFLINE 128 
 int /*<<< orphan*/  bfa_fcs_lport_scn_sm_offline ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_lport_scn_s*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bfa_fcs_lport_scn_s *scn,
			enum port_scn_event event)
{
	switch (event) {
	case SCNSM_EVENT_PORT_OFFLINE:
		FUNC1(scn, bfa_fcs_lport_scn_sm_offline);
		break;

	default:
		FUNC0(scn->port->fcs, event);
	}
}