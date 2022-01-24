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
struct bfa_sgpg_wqe_s {scalar_t__ nsgpg_total; scalar_t__ nsgpg; int /*<<< orphan*/  sgpg_q; int /*<<< orphan*/  qe; } ;
struct bfa_sgpg_mod_s {int /*<<< orphan*/  sgpg_wait_q; } ;
struct bfa_s {int dummy; } ;

/* Variables and functions */
 struct bfa_sgpg_mod_s* FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfa_sgpg_wqe_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_s*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct bfa_s *bfa, struct bfa_sgpg_wqe_s *wqe)
{
	struct bfa_sgpg_mod_s *mod = FUNC0(bfa);

	FUNC1(!FUNC2(&mod->sgpg_wait_q, wqe));
	FUNC4(&wqe->qe);

	if (wqe->nsgpg_total != wqe->nsgpg)
		FUNC3(bfa, &wqe->sgpg_q,
				   wqe->nsgpg_total - wqe->nsgpg);
}