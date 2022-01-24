#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bfa_fcs_lport_ns_s {TYPE_3__* port; int /*<<< orphan*/  fcxp; int /*<<< orphan*/  timer; } ;
typedef  enum vport_ns_event { ____Placeholder_vport_ns_event } vport_ns_event ;
struct TYPE_4__ {int /*<<< orphan*/  ns_retries; } ;
struct TYPE_5__ {int pwwn; } ;
struct TYPE_6__ {int /*<<< orphan*/  fcs; TYPE_1__ stats; TYPE_2__ port_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  BFA_FCS_RETRY_TIMEOUT ; 
#define  NSSM_EVENT_NS_QUERY 131 
#define  NSSM_EVENT_PORT_OFFLINE 130 
#define  NSSM_EVENT_RSP_ERROR 129 
#define  NSSM_EVENT_RSP_OK 128 
 int /*<<< orphan*/  bfa_fcs_lport_ns_sm_gid_ft_retry ; 
 int /*<<< orphan*/  bfa_fcs_lport_ns_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_lport_ns_sm_online ; 
 int /*<<< orphan*/  bfa_fcs_lport_ns_timeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_lport_ns_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_lport_ns_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct bfa_fcs_lport_ns_s *ns,
			enum vport_ns_event event)
{
	FUNC5(ns->port->fcs, ns->port->port_cfg.pwwn);
	FUNC5(ns->port->fcs, event);

	switch (event) {
	case NSSM_EVENT_RSP_OK:
		FUNC3(ns, bfa_fcs_lport_ns_sm_online);
		break;

	case NSSM_EVENT_RSP_ERROR:
		/*
		 * TBD: for certain reject codes, we don't need to retry
		 */
		/*
		 * Start timer for a delayed retry
		 */
		FUNC3(ns, bfa_fcs_lport_ns_sm_gid_ft_retry);
		ns->port->stats.ns_retries++;
		FUNC4(FUNC0(ns->port),
				    &ns->timer, bfa_fcs_lport_ns_timeout, ns,
				    BFA_FCS_RETRY_TIMEOUT);
		break;

	case NSSM_EVENT_PORT_OFFLINE:
		FUNC3(ns, bfa_fcs_lport_ns_sm_offline);
		FUNC1(ns->fcxp);
		break;

	case  NSSM_EVENT_NS_QUERY:
		break;

	default:
		FUNC2(ns->port->fcs, event);
	}
}