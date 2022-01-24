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
struct bfi_lps_login_req_s {int /*<<< orphan*/  mh; int /*<<< orphan*/  auth_en; int /*<<< orphan*/  fdisc; int /*<<< orphan*/  nwwn; int /*<<< orphan*/  pwwn; int /*<<< orphan*/  pdu_size; int /*<<< orphan*/  alpa; int /*<<< orphan*/  bfa_tag; } ;
struct bfa_lps_s {int /*<<< orphan*/  qe; int /*<<< orphan*/  reqq; int /*<<< orphan*/  bfa; int /*<<< orphan*/  auth_en; int /*<<< orphan*/  fdisc; int /*<<< orphan*/  nwwn; int /*<<< orphan*/  pwwn; int /*<<< orphan*/  pdusz; int /*<<< orphan*/  alpa; int /*<<< orphan*/  bfa_tag; } ;
struct bfa_lps_mod_s {int /*<<< orphan*/  lps_login_q; } ;

/* Variables and functions */
 struct bfa_lps_mod_s* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BFI_LPS_H2I_LOGIN_REQ ; 
 int /*<<< orphan*/  BFI_MC_LPS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct bfi_lps_login_req_s* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct bfa_lps_s *lps)
{
	struct bfa_lps_mod_s	*mod = FUNC0(lps->bfa);
	struct bfi_lps_login_req_s	*m;

	m = FUNC3(lps->bfa, lps->reqq);
	FUNC1(!m);

	FUNC5(m->mh, BFI_MC_LPS, BFI_LPS_H2I_LOGIN_REQ,
		FUNC2(lps->bfa));

	m->bfa_tag	= lps->bfa_tag;
	m->alpa		= lps->alpa;
	m->pdu_size	= FUNC6(lps->pdusz);
	m->pwwn		= lps->pwwn;
	m->nwwn		= lps->nwwn;
	m->fdisc	= lps->fdisc;
	m->auth_en	= lps->auth_en;

	FUNC4(lps->bfa, lps->reqq, m->mh);
	FUNC8(&lps->qe);
	FUNC7(&lps->qe, &mod->lps_login_q);
}