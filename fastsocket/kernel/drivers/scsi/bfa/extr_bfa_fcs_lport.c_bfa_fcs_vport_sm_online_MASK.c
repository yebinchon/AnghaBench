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
struct bfa_fcs_vport_s {int /*<<< orphan*/  lport; int /*<<< orphan*/ * lps; } ;
typedef  enum bfa_fcs_vport_event { ____Placeholder_bfa_fcs_vport_event } bfa_fcs_vport_event ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCS_PORT_SM_STOP ; 
#define  BFA_FCS_VPORT_SM_DELETE 130 
#define  BFA_FCS_VPORT_SM_OFFLINE 129 
#define  BFA_FCS_VPORT_SM_STOP 128 
 int /*<<< orphan*/  BFA_LPS_SM_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_vport_s*) ; 
 int FUNC1 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_deleting ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_stopping ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcs_vport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct bfa_fcs_vport_s *vport,
			enum bfa_fcs_vport_event event)
{
	FUNC7(FUNC0(vport), FUNC1(vport));
	FUNC7(FUNC0(vport), event);

	switch (event) {
	case BFA_FCS_VPORT_SM_DELETE:
		FUNC6(vport, bfa_fcs_vport_sm_deleting);
		FUNC2(&vport->lport);
		break;

	case BFA_FCS_VPORT_SM_STOP:
		FUNC6(vport, bfa_fcs_vport_sm_stopping);
		FUNC5(&vport->lport, BFA_FCS_PORT_SM_STOP);
		break;

	case BFA_FCS_VPORT_SM_OFFLINE:
		FUNC6(vport, bfa_fcs_vport_sm_offline);
		FUNC5(vport->lps, BFA_LPS_SM_OFFLINE);
		FUNC3(&vport->lport);
		break;

	default:
		FUNC4(FUNC0(vport), event);
	}
}