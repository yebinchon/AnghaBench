#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int pwwn; } ;
struct TYPE_6__ {TYPE_1__ port_cfg; } ;
struct bfa_fcs_fabric_s {int bb_credit; TYPE_3__* fcs; int /*<<< orphan*/  lps; TYPE_2__ bport; } ;
typedef  enum bfa_fcs_fabric_event { ____Placeholder_bfa_fcs_fabric_event } bfa_fcs_fabric_event ;
struct TYPE_7__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
#define  BFA_FCS_FABRIC_SM_DELETE 131 
#define  BFA_FCS_FABRIC_SM_LINK_DOWN 130 
#define  BFA_FCS_FABRIC_SM_NO_FABRIC 129 
#define  BFA_FCS_FABRIC_SM_RETRY_OP 128 
 int /*<<< orphan*/  BFA_LPS_SM_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_fabric_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_fabric_s*) ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_deleting ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_linkdown ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_fabric_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC7(struct bfa_fcs_fabric_s *fabric,
			   enum bfa_fcs_fabric_event event)
{
	FUNC6(fabric->fcs, fabric->bport.port_cfg.pwwn);
	FUNC6(fabric->fcs, event);

	switch (event) {
	case BFA_FCS_FABRIC_SM_LINK_DOWN:
		FUNC5(fabric, bfa_fcs_fabric_sm_linkdown);
		FUNC4(fabric->lps, BFA_LPS_SM_OFFLINE);
		FUNC2(fabric);
		break;

	case BFA_FCS_FABRIC_SM_DELETE:
		FUNC5(fabric, bfa_fcs_fabric_sm_deleting);
		FUNC1(fabric);
		break;

	case BFA_FCS_FABRIC_SM_NO_FABRIC:
		FUNC6(fabric->fcs, fabric->bb_credit);
		FUNC0(fabric->fcs->bfa,
					   fabric->bb_credit);
		break;

	case BFA_FCS_FABRIC_SM_RETRY_OP:
		break;

	default:
		FUNC3(fabric->fcs, event);
	}
}