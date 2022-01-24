#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bfa_tskim_s {int tsk_tag; int /*<<< orphan*/  bfa; int /*<<< orphan*/  reqq_wait; TYPE_1__* itnim; int /*<<< orphan*/  tsk_status; } ;
typedef  enum bfa_tskim_event { ____Placeholder_bfa_tskim_event } bfa_tskim_event ;
struct TYPE_3__ {int /*<<< orphan*/  reqq; } ;

/* Variables and functions */
#define  BFA_TSKIM_SM_START 128 
 int /*<<< orphan*/  BFI_TSKIM_STS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_tskim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_tskim_s*) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_tskim_s*) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_tskim_s*) ; 
 int /*<<< orphan*/  bfa_tskim_sm_active ; 
 int /*<<< orphan*/  bfa_tskim_sm_iocleanup ; 
 int /*<<< orphan*/  bfa_tskim_sm_qfull ; 
 int /*<<< orphan*/  tm_qwait ; 

__attribute__((used)) static void
FUNC9(struct bfa_tskim_s *tskim, enum bfa_tskim_event event)
{
	FUNC5(tskim->bfa, tskim->tsk_tag << 16 | event);

	switch (event) {
	case BFA_TSKIM_SM_START:
		FUNC3(tskim, bfa_tskim_sm_active);
		FUNC7(tskim);

		/*
		 * If device is offline, do not send TM on wire. Just cleanup
		 * any pending IO requests and complete TM request.
		 */
		if (!FUNC0(tskim->itnim)) {
			FUNC3(tskim, bfa_tskim_sm_iocleanup);
			tskim->tsk_status = BFI_TSKIM_STS_OK;
			FUNC6(tskim);
			return;
		}

		if (!FUNC8(tskim)) {
			FUNC3(tskim, bfa_tskim_sm_qfull);
			FUNC4(tskim->itnim, tm_qwait);
			FUNC1(tskim->bfa, tskim->itnim->reqq,
					  &tskim->reqq_wait);
		}
		break;

	default:
		FUNC2(tskim->bfa, event);
	}
}