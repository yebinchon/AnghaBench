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
#define  BFA_FCS_VPORT_SM_CREATE 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_vport_s*) ; 
 int FUNC2 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_created ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_vport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct bfa_fcs_vport_s *vport,
			enum bfa_fcs_vport_event event)
{
	FUNC6(FUNC1(vport), FUNC2(vport));
	FUNC6(FUNC1(vport), event);

	switch (event) {
	case BFA_FCS_VPORT_SM_CREATE:
		FUNC5(vport, bfa_fcs_vport_sm_created);
		FUNC3(FUNC0(vport), vport);
		break;

	default:
		FUNC4(FUNC1(vport), event);
	}
}