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
struct bfi_tskim_abortreq_s {int /*<<< orphan*/  mh; int /*<<< orphan*/  tsk_tag; } ;
struct bfa_tskim_s {int /*<<< orphan*/  bfa; int /*<<< orphan*/  tsk_tag; struct bfa_itnim_s* itnim; } ;
struct bfa_itnim_s {int /*<<< orphan*/  reqq; } ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  BFI_MC_TSKIM ; 
 int /*<<< orphan*/  BFI_TSKIM_H2I_ABORT_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bfi_tskim_abortreq_s* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfa_boolean_t
FUNC5(struct bfa_tskim_s *tskim)
{
	struct bfa_itnim_s	*itnim = tskim->itnim;
	struct bfi_tskim_abortreq_s	*m;

	/*
	 * check for room in queue to send request now
	 */
	m = FUNC1(tskim->bfa, itnim->reqq);
	if (!m)
		return BFA_FALSE;

	/*
	 * build i/o request message next
	 */
	FUNC3(m->mh, BFI_MC_TSKIM, BFI_TSKIM_H2I_ABORT_REQ,
			FUNC0(tskim->bfa));

	m->tsk_tag  = FUNC4(tskim->tsk_tag);

	/*
	 * queue I/O message to firmware
	 */
	FUNC2(tskim->bfa, itnim->reqq, m->mh);
	return BFA_TRUE;
}