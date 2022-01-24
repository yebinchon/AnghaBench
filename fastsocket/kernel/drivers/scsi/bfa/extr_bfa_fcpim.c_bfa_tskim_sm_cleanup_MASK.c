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
struct bfa_tskim_s {int tsk_tag; int /*<<< orphan*/  bfa; } ;
typedef  enum bfa_tskim_event { ____Placeholder_bfa_tskim_event } bfa_tskim_event ;

/* Variables and functions */
#define  BFA_TSKIM_SM_CLEANUP_DONE 131 
#define  BFA_TSKIM_SM_DONE 130 
#define  BFA_TSKIM_SM_HWFAIL 129 
#define  BFA_TSKIM_SM_UTAG 128 
 int /*<<< orphan*/  __bfa_cb_tskim_failed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_tskim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_tskim_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_tskim_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_tskim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_tskim_sm_hcb ; 
 int /*<<< orphan*/  bfa_tskim_sm_iocleanup ; 

__attribute__((used)) static void
FUNC6(struct bfa_tskim_s *tskim, enum bfa_tskim_event event)
{
	FUNC2(tskim->bfa, tskim->tsk_tag << 16 | event);

	switch (event) {
	case BFA_TSKIM_SM_DONE:
		/*
		 * Ignore and wait for ABORT completion from firmware.
		 */
		break;

	case BFA_TSKIM_SM_UTAG:
	case BFA_TSKIM_SM_CLEANUP_DONE:
		FUNC1(tskim, bfa_tskim_sm_iocleanup);
		FUNC3(tskim);
		break;

	case BFA_TSKIM_SM_HWFAIL:
		FUNC1(tskim, bfa_tskim_sm_hcb);
		FUNC4(tskim);
		FUNC5(tskim, __bfa_cb_tskim_failed);
		break;

	default:
		FUNC0(tskim->bfa, event);
	}
}