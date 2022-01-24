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
struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_rport_s {int /*<<< orphan*/  pid; scalar_t__ pwwn; struct bfa_fcxp_s* fcxp; int /*<<< orphan*/  fcxp_wqe; int /*<<< orphan*/  fcs; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  lp_tag; TYPE_1__* fabric; TYPE_2__* fcs; } ;
typedef  int /*<<< orphan*/  bfa_cb_fcxp_send_t ;
struct TYPE_4__ {int /*<<< orphan*/  bfa; } ;
struct TYPE_3__ {int /*<<< orphan*/  vf_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  FC_CLASS_3 ; 
 int /*<<< orphan*/  FC_FCCT_TOV ; 
 int /*<<< orphan*/  FC_MAX_PDUSZ ; 
 int /*<<< orphan*/  RPSM_EVENT_FCXP_SENT ; 
 struct bfa_fcxp_s* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void (*) (void*,struct bfa_fcxp_s*),struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_rport_gidpn_response ; 
 int /*<<< orphan*/  bfa_fcs_rport_gpnid_response ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcxp_s*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct fchs_s*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void *rport_cbarg, struct bfa_fcxp_s *fcxp_alloced)
{
	struct bfa_fcs_rport_s *rport = rport_cbarg;
	struct bfa_fcs_lport_s *port = rport->port;
	struct fchs_s	fchs;
	struct bfa_fcxp_s *fcxp;
	int		len;
	bfa_cb_fcxp_send_t cbfn;

	FUNC6(rport->fcs, rport->pid);

	fcxp = fcxp_alloced ? fcxp_alloced :
	       FUNC0(port->fcs, BFA_TRUE);
	if (!fcxp) {
		FUNC1(port->fcs->bfa, &rport->fcxp_wqe,
				bfa_fcs_rport_send_nsdisc, rport, BFA_TRUE);
		return;
	}
	rport->fcxp = fcxp;

	if (rport->pwwn) {
		len = FUNC7(&fchs, FUNC3(fcxp),
				FUNC2(port), 0, rport->pwwn);
		cbfn = bfa_fcs_rport_gidpn_response;
	} else {
		len = FUNC8(&fchs, FUNC3(fcxp),
				FUNC2(port), 0, rport->pid);
		cbfn = bfa_fcs_rport_gpnid_response;
	}

	FUNC4(fcxp, NULL, port->fabric->vf_id, port->lp_tag, BFA_FALSE,
			FC_CLASS_3, len, &fchs, cbfn,
			(void *)rport, FC_MAX_PDUSZ, FC_FCCT_TOV);

	FUNC5(rport, RPSM_EVENT_FCXP_SENT);
}