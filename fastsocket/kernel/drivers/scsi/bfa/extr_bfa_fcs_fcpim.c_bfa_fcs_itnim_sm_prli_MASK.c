#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bfa_fcs_itnim_s {TYPE_1__* fcs; int /*<<< orphan*/  fcxp; TYPE_2__* rport; int /*<<< orphan*/  timer; } ;
typedef  enum bfa_fcs_itnim_event { ____Placeholder_bfa_fcs_itnim_event } bfa_fcs_itnim_event ;
struct TYPE_5__ {int pwwn; int /*<<< orphan*/  scsi_function; } ;
struct TYPE_4__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
#define  BFA_FCS_ITNIM_SM_DELETE 133 
#define  BFA_FCS_ITNIM_SM_INITIATOR 132 
#define  BFA_FCS_ITNIM_SM_OFFLINE 131 
#define  BFA_FCS_ITNIM_SM_RSP_ERROR 130 
#define  BFA_FCS_ITNIM_SM_RSP_NOT_SUPP 129 
#define  BFA_FCS_ITNIM_SM_RSP_OK 128 
 int /*<<< orphan*/  BFA_FCS_RETRY_TIMEOUT ; 
 int /*<<< orphan*/  BFA_RPORT_INITIATOR ; 
 int /*<<< orphan*/  RPSM_EVENT_FC4_FCS_ONLINE ; 
 int /*<<< orphan*/  RPSM_EVENT_FC4_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_itnim_s*) ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_hal_rport_online ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_initiator ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_itnim_sm_prli_retry ; 
 int /*<<< orphan*/  bfa_fcs_itnim_timeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC7(struct bfa_fcs_itnim_s *itnim,
		 enum bfa_fcs_itnim_event event)
{
	FUNC6(itnim->fcs, itnim->rport->pwwn);
	FUNC6(itnim->fcs, event);

	switch (event) {
	case BFA_FCS_ITNIM_SM_RSP_OK:
		if (itnim->rport->scsi_function == BFA_RPORT_INITIATOR)
			FUNC4(itnim, bfa_fcs_itnim_sm_initiator);
		else
			FUNC4(itnim,
				bfa_fcs_itnim_sm_hal_rport_online);

		FUNC3(itnim->rport, RPSM_EVENT_FC4_FCS_ONLINE);
		break;

	case BFA_FCS_ITNIM_SM_RSP_ERROR:
		FUNC4(itnim, bfa_fcs_itnim_sm_prli_retry);
		FUNC5(itnim->fcs->bfa, &itnim->timer,
				bfa_fcs_itnim_timeout, itnim,
				BFA_FCS_RETRY_TIMEOUT);
		break;

	case BFA_FCS_ITNIM_SM_RSP_NOT_SUPP:
		FUNC4(itnim, bfa_fcs_itnim_sm_offline);
		break;

	case BFA_FCS_ITNIM_SM_OFFLINE:
		FUNC4(itnim, bfa_fcs_itnim_sm_offline);
		FUNC1(itnim->fcxp);
		FUNC3(itnim->rport, RPSM_EVENT_FC4_OFFLINE);
		break;

	case BFA_FCS_ITNIM_SM_INITIATOR:
		FUNC4(itnim, bfa_fcs_itnim_sm_initiator);
		FUNC1(itnim->fcxp);
		FUNC3(itnim->rport, RPSM_EVENT_FC4_FCS_ONLINE);
		break;

	case BFA_FCS_ITNIM_SM_DELETE:
		FUNC4(itnim, bfa_fcs_itnim_sm_offline);
		FUNC1(itnim->fcxp);
		FUNC0(itnim);
		break;

	default:
		FUNC2(itnim->fcs, event);
	}
}