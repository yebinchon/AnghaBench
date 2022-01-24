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
struct bfa_itnim_s {int /*<<< orphan*/  bfa; int /*<<< orphan*/  reqq_wait; TYPE_1__* rport; } ;
typedef  enum bfa_itnim_event { ____Placeholder_bfa_itnim_event } bfa_itnim_event ;
struct TYPE_2__ {int rport_tag; } ;

/* Variables and functions */
#define  BFA_ITNIM_SM_DELETE 131 
#define  BFA_ITNIM_SM_HWFAIL 130 
#define  BFA_ITNIM_SM_OFFLINE 129 
#define  BFA_ITNIM_SM_QRESUME 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_itnim_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_itnim_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_itnim_s*) ; 
 int /*<<< orphan*/  bfa_itnim_sm_fwcreate ; 
 int /*<<< orphan*/  bfa_itnim_sm_iocdisable ; 
 int /*<<< orphan*/  bfa_itnim_sm_offline ; 
 int /*<<< orphan*/  bfa_itnim_sm_uninit ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct bfa_itnim_s *itnim,
			enum bfa_itnim_event event)
{
	FUNC6(itnim->bfa, itnim->rport->rport_tag);
	FUNC6(itnim->bfa, event);

	switch (event) {
	case BFA_ITNIM_SM_QRESUME:
		FUNC5(itnim, bfa_itnim_sm_fwcreate);
		FUNC2(itnim);
		break;

	case BFA_ITNIM_SM_DELETE:
		FUNC5(itnim, bfa_itnim_sm_uninit);
		FUNC3(&itnim->reqq_wait);
		FUNC0(itnim);
		break;

	case BFA_ITNIM_SM_OFFLINE:
		FUNC5(itnim, bfa_itnim_sm_offline);
		FUNC3(&itnim->reqq_wait);
		FUNC1(itnim);
		break;

	case BFA_ITNIM_SM_HWFAIL:
		FUNC5(itnim, bfa_itnim_sm_iocdisable);
		FUNC3(&itnim->reqq_wait);
		break;

	default:
		FUNC4(itnim->bfa, event);
	}
}