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
struct bfa_fcs_itnim_s {int /*<<< orphan*/  fcs; TYPE_1__* rport; } ;
typedef  enum bfa_fcs_itnim_event { ____Placeholder_bfa_fcs_itnim_event } bfa_fcs_itnim_event ;
struct TYPE_2__ {int pwwn; } ;

/* Variables and functions */
#define  BFA_FCS_ITNIM_SM_DELETE 132 
#define  BFA_FCS_ITNIM_SM_FCS_ONLINE 131 
#define  BFA_FCS_ITNIM_SM_INITIATOR 130 
#define  BFA_FCS_ITNIM_SM_OFFLINE 129 
#define  BFA_FCS_ITNIM_SM_RSP_ERROR 128 
 int /*<<< orphan*/  RPSM_EVENT_FC4_FCS_ONLINE ; 
 int /*<<< orphan*/  RPSM_EVENT_FC4_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_itnim_s*) ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_offline ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct bfa_fcs_itnim_s *itnim,
		 enum bfa_fcs_itnim_event event)
{
	FUNC4(itnim->fcs, itnim->rport->pwwn);
	FUNC4(itnim->fcs, event);

	switch (event) {
	case BFA_FCS_ITNIM_SM_OFFLINE:
		FUNC3(itnim, bfa_fcs_itnim_sm_offline);
		FUNC2(itnim->rport, RPSM_EVENT_FC4_OFFLINE);
		break;

	/*
	 * fcs_online is expected here for well known initiator ports
	 */
	case BFA_FCS_ITNIM_SM_FCS_ONLINE:
		FUNC2(itnim->rport, RPSM_EVENT_FC4_FCS_ONLINE);
		break;

	case BFA_FCS_ITNIM_SM_RSP_ERROR:
	case BFA_FCS_ITNIM_SM_INITIATOR:
		break;

	case BFA_FCS_ITNIM_SM_DELETE:
		FUNC3(itnim, bfa_fcs_itnim_sm_offline);
		FUNC0(itnim);
		break;

	default:
		FUNC1(itnim->fcs, event);
	}
}