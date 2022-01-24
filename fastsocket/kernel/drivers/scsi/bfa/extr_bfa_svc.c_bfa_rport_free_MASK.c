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
struct bfa_rport_s {int /*<<< orphan*/  qe; int /*<<< orphan*/  bfa; } ;
struct bfa_rport_mod_s {int /*<<< orphan*/  rp_free_q; int /*<<< orphan*/  rp_active_q; } ;

/* Variables and functions */
 struct bfa_rport_mod_s* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfa_rport_s*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct bfa_rport_s *rport)
{
	struct bfa_rport_mod_s *mod = FUNC0(rport->bfa);

	FUNC1(!FUNC2(&mod->rp_active_q, rport));
	FUNC4(&rport->qe);
	FUNC3(&rport->qe, &mod->rp_free_q);
}