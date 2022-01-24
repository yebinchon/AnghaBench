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
struct bfa_fcs_vport_s {int dummy; } ;
typedef  enum bfa_fcs_vport_event { ____Placeholder_bfa_fcs_vport_event } bfa_fcs_vport_event ;

/* Variables and functions */
#define  BFA_FCS_VPORT_SM_DELCOMP 130 
#define  BFA_FCS_VPORT_SM_DELETE 129 
#define  BFA_FCS_VPORT_SM_STOPCOMP 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_vport_s*) ; 
 int FUNC1 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_created ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_uninit ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_vport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct bfa_fcs_vport_s *vport,
			enum bfa_fcs_vport_event event)
{
	FUNC5(FUNC0(vport), FUNC1(vport));
	FUNC5(FUNC0(vport), event);

	switch (event) {
	case BFA_FCS_VPORT_SM_DELCOMP:
		FUNC4(vport, bfa_fcs_vport_sm_uninit);
		FUNC2(vport);
		break;

	case BFA_FCS_VPORT_SM_STOPCOMP:
		FUNC4(vport, bfa_fcs_vport_sm_created);
		break;

	case BFA_FCS_VPORT_SM_DELETE:
		break;

	default:
		FUNC3(FUNC0(vport), event);
	}
}