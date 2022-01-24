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
struct bfa_ioim_s {int iotag; int /*<<< orphan*/  bfa; } ;
typedef  enum bfa_ioim_event { ____Placeholder_bfa_ioim_event } bfa_ioim_event ;

/* Variables and functions */
#define  BFA_IOIM_SM_CLEANUP 130 
#define  BFA_IOIM_SM_FREE 129 
#define  BFA_IOIM_SM_HWFAIL 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  bfa_ioim_sm_uninit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct bfa_ioim_s *ioim, enum bfa_ioim_event event)
{
	FUNC4(ioim->bfa, ioim->iotag);
	FUNC4(ioim->bfa, event);

	switch (event) {
	case BFA_IOIM_SM_FREE:
		FUNC3(ioim, bfa_ioim_sm_uninit);
		FUNC0(ioim);
		break;

	case BFA_IOIM_SM_CLEANUP:
		FUNC1(ioim);
		break;

	case BFA_IOIM_SM_HWFAIL:
		break;

	default:
		FUNC2(ioim->bfa, event);
	}
}