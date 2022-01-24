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
struct TYPE_4__ {int pwwn; } ;
struct TYPE_3__ {TYPE_2__ port_cfg; } ;
struct bfa_fcs_fabric_s {int /*<<< orphan*/  fcs; TYPE_1__ bport; } ;
typedef  enum bfa_fcs_fabric_event { ____Placeholder_bfa_fcs_fabric_event } bfa_fcs_fabric_event ;

/* Variables and functions */
#define  BFA_FCS_FABRIC_SM_CREATE 130 
#define  BFA_FCS_FABRIC_SM_LINK_DOWN 129 
#define  BFA_FCS_FABRIC_SM_LINK_UP 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_fabric_s*) ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_created ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_fabric_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct bfa_fcs_fabric_s *fabric,
			 enum bfa_fcs_fabric_event event)
{
	FUNC4(fabric->fcs, fabric->bport.port_cfg.pwwn);
	FUNC4(fabric->fcs, event);

	switch (event) {
	case BFA_FCS_FABRIC_SM_CREATE:
		FUNC3(fabric, bfa_fcs_fabric_sm_created);
		FUNC0(fabric);
		FUNC1(&fabric->bport, &fabric->bport.port_cfg);
		break;

	case BFA_FCS_FABRIC_SM_LINK_UP:
	case BFA_FCS_FABRIC_SM_LINK_DOWN:
		break;

	default:
		FUNC2(fabric->fcs, event);
	}
}