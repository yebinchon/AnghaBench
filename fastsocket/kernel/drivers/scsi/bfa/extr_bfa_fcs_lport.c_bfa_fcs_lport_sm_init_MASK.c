#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int pwwn; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  fcs; TYPE_1__* fabric; int /*<<< orphan*/  vport; TYPE_2__ port_cfg; } ;
typedef  enum bfa_fcs_lport_event { ____Placeholder_bfa_fcs_lport_event } bfa_fcs_lport_event ;
struct TYPE_3__ {int /*<<< orphan*/  stop_wc; } ;

/* Variables and functions */
#define  BFA_FCS_PORT_SM_DELETE 131 
#define  BFA_FCS_PORT_SM_OFFLINE 130 
#define  BFA_FCS_PORT_SM_ONLINE 129 
#define  BFA_FCS_PORT_SM_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_lport_sm_online ; 
 int /*<<< orphan*/  bfa_fcs_lport_sm_uninit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct bfa_fcs_lport_s *port,
			enum bfa_fcs_lport_event event)
{
	FUNC5(port->fcs, port->port_cfg.pwwn);
	FUNC5(port->fcs, event);

	switch (event) {
	case BFA_FCS_PORT_SM_ONLINE:
		FUNC4(port, bfa_fcs_lport_sm_online);
		FUNC1(port);
		break;

	case BFA_FCS_PORT_SM_DELETE:
		FUNC4(port, bfa_fcs_lport_sm_uninit);
		FUNC0(port);
		break;

	case BFA_FCS_PORT_SM_STOP:
		/* If vport - send completion call back */
		if (port->vport)
			FUNC2(port->vport);
		else
			FUNC6(&(port->fabric->stop_wc));
		break;

	case BFA_FCS_PORT_SM_OFFLINE:
		break;

	default:
		FUNC3(port->fcs, event);
	}
}