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
struct bfa_sgpg_wqe_s {int nsgpg_total; int nsgpg; int /*<<< orphan*/  qe; int /*<<< orphan*/  sgpg_q; } ;
struct bfa_sgpg_mod_s {int free_sgpgs; int /*<<< orphan*/  sgpg_wait_q; int /*<<< orphan*/  sgpg_q; } ;
struct bfa_s {int dummy; } ;

/* Variables and functions */
 struct bfa_sgpg_mod_s* FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC5(struct bfa_s *bfa, struct bfa_sgpg_wqe_s *wqe, int nsgpg)
{
	struct bfa_sgpg_mod_s *mod = FUNC0(bfa);

	FUNC1(nsgpg <= 0);
	FUNC1(nsgpg <= mod->free_sgpgs);

	wqe->nsgpg_total = wqe->nsgpg = nsgpg;

	/*
	 * allocate any left to this one first
	 */
	if (mod->free_sgpgs) {
		/*
		 * no one else is waiting for SGPG
		 */
		FUNC1(!FUNC3(&mod->sgpg_wait_q));
		FUNC4(&mod->sgpg_q, &wqe->sgpg_q);
		wqe->nsgpg -= mod->free_sgpgs;
		mod->free_sgpgs = 0;
	}

	FUNC2(&wqe->qe, &mod->sgpg_wait_q);
}