#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int pwwn; } ;
struct TYPE_4__ {TYPE_1__ port_cfg; } ;
struct bfa_fcs_fabric_s {int /*<<< orphan*/  fcs; int /*<<< orphan*/  lps; TYPE_2__ bport; } ;
typedef  enum bfa_fcs_fabric_event { ____Placeholder_bfa_fcs_fabric_event } bfa_fcs_fabric_event ;

/* Variables and functions */
#define  BFA_FCS_FABRIC_SM_AUTH_FAILED 132 
#define  BFA_FCS_FABRIC_SM_AUTH_SUCCESS 131 
#define  BFA_FCS_FABRIC_SM_DELETE 130 
#define  BFA_FCS_FABRIC_SM_LINK_DOWN 129 
#define  BFA_FCS_FABRIC_SM_PERF_EVFP 128 
 int /*<<< orphan*/  BFA_LPS_SM_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_fabric_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_fabric_s*) ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_auth_failed ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_deleting ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_evfp ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_linkdown ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_online ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_fabric_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct bfa_fcs_fabric_s *fabric,
		       enum bfa_fcs_fabric_event event)
{
	FUNC5(fabric->fcs, fabric->bport.port_cfg.pwwn);
	FUNC5(fabric->fcs, event);

	switch (event) {
	case BFA_FCS_FABRIC_SM_AUTH_FAILED:
		FUNC4(fabric, bfa_fcs_fabric_sm_auth_failed);
		FUNC3(fabric->lps, BFA_LPS_SM_OFFLINE);
		break;

	case BFA_FCS_FABRIC_SM_AUTH_SUCCESS:
		FUNC4(fabric, bfa_fcs_fabric_sm_online);
		FUNC1(fabric);
		break;

	case BFA_FCS_FABRIC_SM_PERF_EVFP:
		FUNC4(fabric, bfa_fcs_fabric_sm_evfp);
		break;

	case BFA_FCS_FABRIC_SM_LINK_DOWN:
		FUNC4(fabric, bfa_fcs_fabric_sm_linkdown);
		FUNC3(fabric->lps, BFA_LPS_SM_OFFLINE);
		break;

	case BFA_FCS_FABRIC_SM_DELETE:
		FUNC4(fabric, bfa_fcs_fabric_sm_deleting);
		FUNC0(fabric);
		break;

	default:
		FUNC2(fabric->fcs, event);
	}
}