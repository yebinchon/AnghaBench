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
typedef  int u16 ;
struct bfi_fcxp_send_rsp_s {scalar_t__ req_status; int /*<<< orphan*/  fchs; void* residue_len; void* rsp_len; int /*<<< orphan*/  fcxp_tag; } ;
struct bfa_s {int dummy; } ;
struct bfa_fcxp_s {scalar_t__ rsp_status; int /*<<< orphan*/  (* send_cbfn ) (int /*<<< orphan*/ *,struct bfa_fcxp_s*,int /*<<< orphan*/ ,scalar_t__,void*,void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  hcb_qe; int /*<<< orphan*/  rsp_fchs; void* residue_len; void* rsp_len; int /*<<< orphan*/  send_cbarg; int /*<<< orphan*/ * caller; } ;
struct bfa_fcxp_mod_s {struct bfa_s* bfa; } ;

/* Variables and functions */
 struct bfa_fcxp_s* FUNC0 (struct bfa_fcxp_mod_s*,int) ; 
 struct bfa_fcxp_mod_s* FUNC1 (struct bfa_s*) ; 
 scalar_t__ BFA_STATUS_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __bfa_fcxp_send_cbfn ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_s*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_s*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_s*,struct bfa_fcxp_s*,struct bfi_fcxp_send_rsp_s*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct bfa_fcxp_s*,int /*<<< orphan*/ ,scalar_t__,void*,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct bfa_s *bfa, struct bfi_fcxp_send_rsp_s *fcxp_rsp)
{
	struct bfa_fcxp_mod_s	*mod = FUNC1(bfa);
	struct bfa_fcxp_s	*fcxp;
	u16		fcxp_tag = FUNC3(fcxp_rsp->fcxp_tag);

	FUNC7(bfa, fcxp_tag);

	fcxp_rsp->rsp_len = FUNC4(fcxp_rsp->rsp_len);

	/*
	 * @todo f/w should not set residue to non-0 when everything
	 *	 is received.
	 */
	if (fcxp_rsp->req_status == BFA_STATUS_OK)
		fcxp_rsp->residue_len = 0;
	else
		fcxp_rsp->residue_len = FUNC4(fcxp_rsp->residue_len);

	fcxp = FUNC0(mod, fcxp_tag);

	FUNC2(fcxp->send_cbfn == NULL);

	FUNC8(mod->bfa, fcxp, fcxp_rsp);

	if (fcxp->send_cbfn != NULL) {
		FUNC7(mod->bfa, (NULL == fcxp->caller));
		if (fcxp->caller == NULL) {
			fcxp->send_cbfn(fcxp->caller, fcxp, fcxp->send_cbarg,
					fcxp_rsp->req_status, fcxp_rsp->rsp_len,
					fcxp_rsp->residue_len, &fcxp_rsp->fchs);
			/*
			 * fcxp automatically freed on return from the callback
			 */
			FUNC6(fcxp);
		} else {
			fcxp->rsp_status = fcxp_rsp->req_status;
			fcxp->rsp_len = fcxp_rsp->rsp_len;
			fcxp->residue_len = fcxp_rsp->residue_len;
			fcxp->rsp_fchs = fcxp_rsp->fchs;

			FUNC5(bfa, &fcxp->hcb_qe,
					__bfa_fcxp_send_cbfn, fcxp);
		}
	} else {
		FUNC7(bfa, (NULL == fcxp->send_cbfn));
	}
}