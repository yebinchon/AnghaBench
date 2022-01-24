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
struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  ns_rftid_sent; int /*<<< orphan*/  ns_rftid_alloc_wait; } ;
struct TYPE_6__ {int /*<<< orphan*/  roles; int /*<<< orphan*/  pwwn; } ;
struct bfa_fcs_lport_s {TYPE_3__ stats; int /*<<< orphan*/  lp_tag; TYPE_2__* fabric; TYPE_1__ port_cfg; TYPE_4__* fcs; } ;
struct bfa_fcs_lport_ns_s {struct bfa_fcxp_s* fcxp; int /*<<< orphan*/  fcxp_wqe; struct bfa_fcs_lport_s* port; } ;
struct TYPE_9__ {int /*<<< orphan*/  bfa; } ;
struct TYPE_7__ {int /*<<< orphan*/  vf_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  FC_CLASS_3 ; 
 int /*<<< orphan*/  FC_FCCT_TOV ; 
 int /*<<< orphan*/  FC_MAX_PDUSZ ; 
 int /*<<< orphan*/  NSSM_EVENT_RFTID_SENT ; 
 struct bfa_fcxp_s* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void (*) (void*,struct bfa_fcxp_s*),struct bfa_fcs_lport_ns_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_lport_ns_rft_id_response ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcxp_s*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct fchs_s*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_lport_ns_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *ns_cbarg, struct bfa_fcxp_s *fcxp_alloced)
{
	struct bfa_fcs_lport_ns_s *ns = ns_cbarg;
	struct bfa_fcs_lport_s *port = ns->port;
	struct fchs_s fchs;
	int             len;
	struct bfa_fcxp_s *fcxp;

	FUNC6(port->fcs, port->port_cfg.pwwn);

	fcxp = fcxp_alloced ? fcxp_alloced :
	       FUNC0(port->fcs, BFA_TRUE);
	if (!fcxp) {
		port->stats.ns_rftid_alloc_wait++;
		FUNC1(port->fcs->bfa, &ns->fcxp_wqe,
				bfa_fcs_lport_ns_send_rft_id, ns, BFA_TRUE);
		return;
	}
	ns->fcxp = fcxp;

	len = FUNC7(&fchs, FUNC3(fcxp),
		     FUNC2(port), 0, port->port_cfg.roles);

	FUNC4(fcxp, NULL, port->fabric->vf_id, port->lp_tag, BFA_FALSE,
			  FC_CLASS_3, len, &fchs,
			  bfa_fcs_lport_ns_rft_id_response, (void *)ns,
			  FC_MAX_PDUSZ, FC_FCCT_TOV);

	port->stats.ns_rftid_sent++;
	FUNC5(ns, NSSM_EVENT_RFTID_SENT);
}