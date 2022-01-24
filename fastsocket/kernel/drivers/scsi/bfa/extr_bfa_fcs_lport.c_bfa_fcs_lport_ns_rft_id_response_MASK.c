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
typedef  int /*<<< orphan*/  u32 ;
struct fchs_s {int dummy; } ;
struct ct_hdr_s {scalar_t__ cmd_rsp_code; int /*<<< orphan*/  exp_code; int /*<<< orphan*/  reason_code; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ns_rftid_rejects; int /*<<< orphan*/  ns_rftid_accepts; int /*<<< orphan*/  ns_rftid_rsp_err; } ;
struct TYPE_3__ {int /*<<< orphan*/  pwwn; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  fcs; TYPE_2__ stats; TYPE_1__ port_cfg; } ;
struct bfa_fcs_lport_ns_s {struct bfa_fcs_lport_s* port; } ;
typedef  int /*<<< orphan*/  bfa_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 scalar_t__ CT_RSP_ACCEPT ; 
 int /*<<< orphan*/  NSSM_EVENT_RSP_ERROR ; 
 int /*<<< orphan*/  NSSM_EVENT_RSP_OK ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_lport_ns_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *fcsarg, struct bfa_fcxp_s *fcxp,
				void *cbarg, bfa_status_t req_status,
				u32 rsp_len, u32 resid_len,
				struct fchs_s *rsp_fchs)
{
	struct bfa_fcs_lport_ns_s *ns = (struct bfa_fcs_lport_ns_s *) cbarg;
	struct bfa_fcs_lport_s *port = ns->port;
	struct ct_hdr_s *cthdr = NULL;

	FUNC3(port->fcs, port->port_cfg.pwwn);

	/*
	 * Sanity Checks
	 */
	if (req_status != BFA_STATUS_OK) {
		FUNC3(port->fcs, req_status);
		port->stats.ns_rftid_rsp_err++;
		FUNC2(ns, NSSM_EVENT_RSP_ERROR);
		return;
	}

	cthdr = (struct ct_hdr_s *) FUNC0(fcxp);
	cthdr->cmd_rsp_code = FUNC1(cthdr->cmd_rsp_code);

	if (cthdr->cmd_rsp_code == CT_RSP_ACCEPT) {
		port->stats.ns_rftid_accepts++;
		FUNC2(ns, NSSM_EVENT_RSP_OK);
		return;
	}

	port->stats.ns_rftid_rejects++;
	FUNC3(port->fcs, cthdr->reason_code);
	FUNC3(port->fcs, cthdr->exp_code);
	FUNC2(ns, NSSM_EVENT_RSP_ERROR);
}