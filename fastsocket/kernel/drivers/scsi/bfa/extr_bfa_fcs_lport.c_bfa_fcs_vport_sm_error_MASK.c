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
struct bfa_fcs_vport_s {int /*<<< orphan*/  lport; } ;
typedef  enum bfa_fcs_vport_event { ____Placeholder_bfa_fcs_vport_event } bfa_fcs_vport_event ;

/* Variables and functions */
#define  BFA_FCS_VPORT_SM_DELETE 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_vport_s*) ; 
 int FUNC1 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_cleanup ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_vport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct bfa_fcs_vport_s *vport,
			enum bfa_fcs_vport_event event)
{
	FUNC4(FUNC0(vport), FUNC1(vport));
	FUNC4(FUNC0(vport), event);

	switch (event) {
	case BFA_FCS_VPORT_SM_DELETE:
		FUNC3(vport, bfa_fcs_vport_sm_cleanup);
		FUNC2(&vport->lport);
		break;

	default:
		FUNC4(FUNC0(vport), event);
	}
}