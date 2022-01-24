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
struct TYPE_2__ {int pwwn; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  fcs; int /*<<< orphan*/  num_rports; TYPE_1__ port_cfg; } ;
typedef  enum bfa_fcs_lport_event { ____Placeholder_bfa_fcs_lport_event } bfa_fcs_lport_event ;

/* Variables and functions */
#define  BFA_FCS_PORT_SM_DELRPORT 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_lport_sm_uninit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(
	struct bfa_fcs_lport_s *port,
	enum bfa_fcs_lport_event event)
{
	FUNC3(port->fcs, port->port_cfg.pwwn);
	FUNC3(port->fcs, event);

	switch (event) {
	case BFA_FCS_PORT_SM_DELRPORT:
		if (port->num_rports == 0) {
			FUNC2(port, bfa_fcs_lport_sm_uninit);
			FUNC0(port);
		}
		break;

	default:
		FUNC1(port->fcs, event);
	}
}