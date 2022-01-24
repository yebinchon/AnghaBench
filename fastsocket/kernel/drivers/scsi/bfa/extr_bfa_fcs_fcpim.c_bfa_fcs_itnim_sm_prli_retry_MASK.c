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
struct bfa_fcs_itnim_s {int prli_retries; int /*<<< orphan*/  fcs; int /*<<< orphan*/  timer; TYPE_1__* rport; } ;
typedef  enum bfa_fcs_itnim_event { ____Placeholder_bfa_fcs_itnim_event } bfa_fcs_itnim_event ;
struct TYPE_2__ {int pwwn; } ;

/* Variables and functions */
#define  BFA_FCS_ITNIM_SM_DELETE 131 
#define  BFA_FCS_ITNIM_SM_INITIATOR 130 
#define  BFA_FCS_ITNIM_SM_OFFLINE 129 
#define  BFA_FCS_ITNIM_SM_TIMEOUT 128 
 int BFA_FCS_RPORT_MAX_RETRIES ; 
 int /*<<< orphan*/  RPSM_EVENT_FC4_FCS_ONLINE ; 
 int /*<<< orphan*/  RPSM_EVENT_FC4_OFFLINE ; 
 int /*<<< orphan*/  RPSM_EVENT_LOGO_IMP ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_itnim_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_itnim_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_initiator ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_prli_send ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct bfa_fcs_itnim_s *itnim,
			    enum bfa_fcs_itnim_event event)
{
	FUNC6(itnim->fcs, itnim->rport->pwwn);
	FUNC6(itnim->fcs, event);

	switch (event) {
	case BFA_FCS_ITNIM_SM_TIMEOUT:
		if (itnim->prli_retries < BFA_FCS_RPORT_MAX_RETRIES) {
			itnim->prli_retries++;
			FUNC6(itnim->fcs, itnim->prli_retries);
			FUNC4(itnim, bfa_fcs_itnim_sm_prli_send);
			FUNC1(itnim, NULL);
		} else {
			/* invoke target offline */
			FUNC4(itnim, bfa_fcs_itnim_sm_offline);
			FUNC3(itnim->rport, RPSM_EVENT_LOGO_IMP);
		}
		break;


	case BFA_FCS_ITNIM_SM_OFFLINE:
		FUNC4(itnim, bfa_fcs_itnim_sm_offline);
		FUNC5(&itnim->timer);
		FUNC3(itnim->rport, RPSM_EVENT_FC4_OFFLINE);
		break;

	case BFA_FCS_ITNIM_SM_INITIATOR:
		FUNC4(itnim, bfa_fcs_itnim_sm_initiator);
		FUNC5(&itnim->timer);
		FUNC3(itnim->rport, RPSM_EVENT_FC4_FCS_ONLINE);
		break;

	case BFA_FCS_ITNIM_SM_DELETE:
		FUNC4(itnim, bfa_fcs_itnim_sm_offline);
		FUNC5(&itnim->timer);
		FUNC0(itnim);
		break;

	default:
		FUNC2(itnim->fcs, event);
	}
}