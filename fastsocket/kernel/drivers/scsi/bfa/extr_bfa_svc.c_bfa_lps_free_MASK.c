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
struct bfa_lps_s {int /*<<< orphan*/  qe; scalar_t__ lp_pid; int /*<<< orphan*/  bfa; } ;
struct bfa_lps_mod_s {int /*<<< orphan*/  lps_free_q; } ;

/* Variables and functions */
 struct bfa_lps_mod_s* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct bfa_lps_s *lps)
{
	struct bfa_lps_mod_s	*mod = FUNC0(lps->bfa);

	lps->lp_pid = 0;
	FUNC2(&lps->qe);
	FUNC1(&lps->qe, &mod->lps_free_q);
}