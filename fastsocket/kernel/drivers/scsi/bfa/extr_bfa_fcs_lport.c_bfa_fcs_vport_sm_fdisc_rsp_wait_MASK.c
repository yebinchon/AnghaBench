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
struct bfa_fcs_vport_s {int /*<<< orphan*/  lport; int /*<<< orphan*/  lps; } ;
typedef  enum bfa_fcs_vport_event { ____Placeholder_bfa_fcs_vport_event } bfa_fcs_vport_event ;

/* Variables and functions */
#define  BFA_FCS_VPORT_SM_DELETE 134 
#define  BFA_FCS_VPORT_SM_FABRIC_MAX 133 
#define  BFA_FCS_VPORT_SM_OFFLINE 132 
#define  BFA_FCS_VPORT_SM_RSP_DUP_WWN 131 
#define  BFA_FCS_VPORT_SM_RSP_ERROR 130 
#define  BFA_FCS_VPORT_SM_RSP_FAILED 129 
#define  BFA_FCS_VPORT_SM_RSP_OK 128 
 int /*<<< orphan*/  BFA_LPS_SM_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_vport_s*) ; 
 int FUNC1 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_cleanup ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_deleting ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_vport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct bfa_fcs_vport_s *vport,
				enum bfa_fcs_vport_event event)
{
	FUNC6(FUNC0(vport), FUNC1(vport));
	FUNC6(FUNC0(vport), event);

	switch (event) {
	case BFA_FCS_VPORT_SM_RSP_OK:
		FUNC5(vport, bfa_fcs_vport_sm_deleting);
		FUNC2(&vport->lport);
		break;

	case BFA_FCS_VPORT_SM_DELETE:
		break;

	case BFA_FCS_VPORT_SM_OFFLINE:
	case BFA_FCS_VPORT_SM_RSP_ERROR:
	case BFA_FCS_VPORT_SM_RSP_FAILED:
	case BFA_FCS_VPORT_SM_FABRIC_MAX:
	case BFA_FCS_VPORT_SM_RSP_DUP_WWN:
		FUNC5(vport, bfa_fcs_vport_sm_cleanup);
		FUNC4(vport->lps, BFA_LPS_SM_OFFLINE);
		FUNC2(&vport->lport);
		break;

	default:
		FUNC3(FUNC0(vport), event);
	}
}