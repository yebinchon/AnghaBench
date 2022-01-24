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
struct bfa_s {int dummy; } ;
struct bfa_fcxp_wqe_s {int /*<<< orphan*/  qe; } ;
struct bfa_fcxp_mod_s {int /*<<< orphan*/  rsp_wait_q; int /*<<< orphan*/  req_wait_q; } ;

/* Variables and functions */
 struct bfa_fcxp_mod_s* FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfa_fcxp_wqe_s*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct bfa_s *bfa, struct bfa_fcxp_wqe_s *wqe)
{
	struct bfa_fcxp_mod_s *mod = FUNC0(bfa);

	FUNC1(!FUNC2(&mod->req_wait_q, wqe) ||
		!FUNC2(&mod->rsp_wait_q, wqe));
	FUNC3(&wqe->qe);
}