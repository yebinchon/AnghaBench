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
struct bfa_fcs_itnim_s {int /*<<< orphan*/  fcs; TYPE_1__* rport; int /*<<< orphan*/  prli_retries; } ;
typedef  enum bfa_fcs_itnim_event { ____Placeholder_bfa_fcs_itnim_event } bfa_fcs_itnim_event ;
struct TYPE_2__ {int pwwn; } ;

/* Variables and functions */
#define  BFA_FCS_ITNIM_SM_DELETE 131 
#define  BFA_FCS_ITNIM_SM_FCS_ONLINE 130 
#define  BFA_FCS_ITNIM_SM_INITIATOR 129 
#define  BFA_FCS_ITNIM_SM_OFFLINE 128 
 int /*<<< orphan*/  RPSM_EVENT_FC4_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_itnim_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_itnim_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_initiator ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_prli_send ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct bfa_fcs_itnim_s *itnim,
		 enum bfa_fcs_itnim_event event)
{
	FUNC5(itnim->fcs, itnim->rport->pwwn);
	FUNC5(itnim->fcs, event);

	switch (event) {
	case BFA_FCS_ITNIM_SM_FCS_ONLINE:
		FUNC4(itnim, bfa_fcs_itnim_sm_prli_send);
		itnim->prli_retries = 0;
		FUNC1(itnim, NULL);
		break;

	case BFA_FCS_ITNIM_SM_OFFLINE:
		FUNC3(itnim->rport, RPSM_EVENT_FC4_OFFLINE);
		break;

	case BFA_FCS_ITNIM_SM_INITIATOR:
		FUNC4(itnim, bfa_fcs_itnim_sm_initiator);
		break;

	case BFA_FCS_ITNIM_SM_DELETE:
		FUNC0(itnim);
		break;

	default:
		FUNC2(itnim->fcs, event);
	}

}