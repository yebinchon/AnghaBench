#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bfa_tskim_s {int tsk_tag; int /*<<< orphan*/  bfa; int /*<<< orphan*/  reqq_wait; TYPE_1__* itnim; } ;
typedef  enum bfa_tskim_event { ____Placeholder_bfa_tskim_event } bfa_tskim_event ;
struct TYPE_2__ {int /*<<< orphan*/  reqq; } ;

/* Variables and functions */
#define  BFA_TSKIM_SM_CLEANUP 130 
#define  BFA_TSKIM_SM_DONE 129 
#define  BFA_TSKIM_SM_HWFAIL 128 
 int /*<<< orphan*/  __bfa_cb_tskim_failed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_tskim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_tskim_s*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_tskim_s*) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_tskim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_tskim_s*) ; 
 int /*<<< orphan*/  bfa_tskim_sm_cleanup ; 
 int /*<<< orphan*/  bfa_tskim_sm_cleanup_qfull ; 
 int /*<<< orphan*/  bfa_tskim_sm_hcb ; 
 int /*<<< orphan*/  bfa_tskim_sm_iocleanup ; 
 int /*<<< orphan*/  tm_qwait ; 

__attribute__((used)) static void
FUNC9(struct bfa_tskim_s *tskim, enum bfa_tskim_event event)
{
	FUNC4(tskim->bfa, tskim->tsk_tag << 16 | event);

	switch (event) {
	case BFA_TSKIM_SM_DONE:
		FUNC2(tskim, bfa_tskim_sm_iocleanup);
		FUNC5(tskim);
		break;

	case BFA_TSKIM_SM_CLEANUP:
		FUNC2(tskim, bfa_tskim_sm_cleanup);
		if (!FUNC8(tskim)) {
			FUNC2(tskim, bfa_tskim_sm_cleanup_qfull);
			FUNC3(tskim->itnim, tm_qwait);
			FUNC0(tskim->bfa, tskim->itnim->reqq,
				&tskim->reqq_wait);
		}
		break;

	case BFA_TSKIM_SM_HWFAIL:
		FUNC2(tskim, bfa_tskim_sm_hcb);
		FUNC6(tskim);
		FUNC7(tskim, __bfa_cb_tskim_failed);
		break;

	default:
		FUNC1(tskim->bfa, event);
	}
}