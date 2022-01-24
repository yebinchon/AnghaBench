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
struct bfa_itnim_s {int /*<<< orphan*/  bfa; int /*<<< orphan*/  is_online; TYPE_1__* rport; } ;
typedef  enum bfa_itnim_event { ____Placeholder_bfa_itnim_event } bfa_itnim_event ;
struct TYPE_2__ {int rport_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
#define  BFA_ITNIM_SM_CREATE 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_itnim_s*) ; 
 int /*<<< orphan*/  bfa_itnim_sm_created ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct bfa_itnim_s *itnim, enum bfa_itnim_event event)
{
	FUNC3(itnim->bfa, itnim->rport->rport_tag);
	FUNC3(itnim->bfa, event);

	switch (event) {
	case BFA_ITNIM_SM_CREATE:
		FUNC2(itnim, bfa_itnim_sm_created);
		itnim->is_online = BFA_FALSE;
		FUNC0(itnim);
		break;

	default:
		FUNC1(itnim->bfa, event);
	}
}