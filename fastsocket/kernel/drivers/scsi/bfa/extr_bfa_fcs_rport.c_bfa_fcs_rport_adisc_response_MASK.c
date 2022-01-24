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
struct TYPE_4__ {int /*<<< orphan*/  els_code; } ;
struct fc_ls_rjt_s {int /*<<< orphan*/  reason_code_expl; int /*<<< orphan*/  reason_code; TYPE_2__ els_cmd; } ;
struct fc_adisc_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  adisc_rejects; int /*<<< orphan*/  adisc_accs; int /*<<< orphan*/  adisc_failed; } ;
struct bfa_fcs_rport_s {int /*<<< orphan*/  fcs; TYPE_1__ stats; int /*<<< orphan*/  nwwn; int /*<<< orphan*/  pwwn; } ;
typedef  int /*<<< orphan*/  bfa_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 scalar_t__ FC_PARSE_OK ; 
 int /*<<< orphan*/  RPSM_EVENT_ACCEPTED ; 
 int /*<<< orphan*/  RPSM_EVENT_FAILED ; 
 void* FUNC0 (struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct fc_adisc_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *fcsarg, struct bfa_fcxp_s *fcxp, void *cbarg,
				bfa_status_t req_status, u32 rsp_len,
				u32 resid_len, struct fchs_s *rsp_fchs)
{
	struct bfa_fcs_rport_s *rport = (struct bfa_fcs_rport_s *) cbarg;
	void		*pld = FUNC0(fcxp);
	struct fc_ls_rjt_s	*ls_rjt;

	if (req_status != BFA_STATUS_OK) {
		FUNC2(rport->fcs, req_status);
		rport->stats.adisc_failed++;
		FUNC1(rport, RPSM_EVENT_FAILED);
		return;
	}

	if (FUNC3((struct fc_adisc_s *)pld, rsp_len, rport->pwwn,
				rport->nwwn)  == FC_PARSE_OK) {
		rport->stats.adisc_accs++;
		FUNC1(rport, RPSM_EVENT_ACCEPTED);
		return;
	}

	rport->stats.adisc_rejects++;
	ls_rjt = pld;
	FUNC2(rport->fcs, ls_rjt->els_cmd.els_code);
	FUNC2(rport->fcs, ls_rjt->reason_code);
	FUNC2(rport->fcs, ls_rjt->reason_code_expl);
	FUNC1(rport, RPSM_EVENT_FAILED);
}