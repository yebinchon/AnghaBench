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
struct list_head {int dummy; } ;
struct bfa_s {int dummy; } ;
struct bfa_cb_qe_s {int /*<<< orphan*/  cbarg; int /*<<< orphan*/  (* cbfn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  pre_rmv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*,struct list_head**) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct bfa_s *bfa, struct list_head *comp_q)
{
	struct list_head		*qe;
	struct bfa_cb_qe_s	*hcb_qe;

	while (!FUNC2(comp_q)) {
		FUNC1(comp_q, &qe);
		hcb_qe = (struct bfa_cb_qe_s *) qe;
		FUNC0(hcb_qe->pre_rmv);
		hcb_qe->cbfn(hcb_qe->cbarg, BFA_FALSE);
	}
}