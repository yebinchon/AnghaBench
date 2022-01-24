#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bfa_s {int dummy; } ;
struct TYPE_5__ {int pwwn; } ;
struct TYPE_7__ {TYPE_1__ port_cfg; } ;
struct bfa_fcs_fabric_s {TYPE_2__* fcs; int /*<<< orphan*/  lps; TYPE_4__ bport; } ;
typedef  enum bfa_fcs_fabric_event { ____Placeholder_bfa_fcs_fabric_event } bfa_fcs_fabric_event ;
struct TYPE_6__ {struct bfa_s* bfa; } ;

/* Variables and functions */
#define  BFA_FCS_FABRIC_SM_AUTH_FAILED 132 
#define  BFA_FCS_FABRIC_SM_AUTH_SUCCESS 131 
#define  BFA_FCS_FABRIC_SM_DELETE 130 
#define  BFA_FCS_FABRIC_SM_LINK_DOWN 129 
#define  BFA_FCS_FABRIC_SM_STOP 128 
 int /*<<< orphan*/  BFA_LPS_SM_OFFLINE ; 
 int /*<<< orphan*/  BFA_PORT_TOPOLOGY_LOOP ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_fabric_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_fabric_s*) ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_auth_failed ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_deleting ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_linkdown ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_stopping ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_fabric_s*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_fcs_fabric_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 

void
FUNC9(struct bfa_fcs_fabric_s *fabric,
			 enum bfa_fcs_fabric_event event)
{
	struct bfa_s	*bfa = fabric->fcs->bfa;

	FUNC8(fabric->fcs, fabric->bport.port_cfg.pwwn);
	FUNC8(fabric->fcs, event);

	switch (event) {
	case BFA_FCS_FABRIC_SM_LINK_DOWN:
		FUNC7(fabric, bfa_fcs_fabric_sm_linkdown);
		if (FUNC0(bfa) == BFA_PORT_TOPOLOGY_LOOP) {
			FUNC4(&fabric->bport);
		} else {
			FUNC6(fabric->lps, BFA_LPS_SM_OFFLINE);
			FUNC2(fabric);
		}
		break;

	case BFA_FCS_FABRIC_SM_DELETE:
		FUNC7(fabric, bfa_fcs_fabric_sm_deleting);
		FUNC1(fabric);
		break;

	case BFA_FCS_FABRIC_SM_STOP:
		FUNC7(fabric, bfa_fcs_fabric_sm_stopping);
		FUNC3(fabric);
		break;

	case BFA_FCS_FABRIC_SM_AUTH_FAILED:
		FUNC7(fabric, bfa_fcs_fabric_sm_auth_failed);
		FUNC6(fabric->lps, BFA_LPS_SM_OFFLINE);
		break;

	case BFA_FCS_FABRIC_SM_AUTH_SUCCESS:
		break;

	default:
		FUNC5(fabric->fcs, event);
	}
}