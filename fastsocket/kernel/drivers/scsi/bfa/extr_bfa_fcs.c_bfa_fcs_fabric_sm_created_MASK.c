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
struct TYPE_7__ {int /*<<< orphan*/  pid; TYPE_1__ port_cfg; } ;
struct bfa_fcs_fabric_s {TYPE_2__* fcs; TYPE_4__ bport; int /*<<< orphan*/  fab_type; } ;
typedef  enum bfa_fcs_fabric_event { ____Placeholder_bfa_fcs_fabric_event } bfa_fcs_fabric_event ;
struct TYPE_6__ {struct bfa_s* bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCS_FABRIC_LOOP ; 
#define  BFA_FCS_FABRIC_SM_DELETE 131 
#define  BFA_FCS_FABRIC_SM_LINK_DOWN 130 
#define  BFA_FCS_FABRIC_SM_LINK_UP 129 
#define  BFA_FCS_FABRIC_SM_START 128 
 int /*<<< orphan*/  BFA_PORT_TOPOLOGY_LOOP ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_fabric_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_fabric_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_fabric_s*) ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_deleting ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_flogi ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_linkdown ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_online ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bfa_fcs_fabric_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC11(struct bfa_fcs_fabric_s *fabric,
			  enum bfa_fcs_fabric_event event)
{
	struct bfa_s	*bfa = fabric->fcs->bfa;

	FUNC10(fabric->fcs, fabric->bport.port_cfg.pwwn);
	FUNC10(fabric->fcs, event);

	switch (event) {
	case BFA_FCS_FABRIC_SM_START:
		if (!FUNC2(fabric->fcs->bfa)) {
			FUNC9(fabric, bfa_fcs_fabric_sm_linkdown);
			break;
		}
		if (FUNC1(bfa) ==
				BFA_PORT_TOPOLOGY_LOOP) {
			fabric->fab_type = BFA_FCS_FABRIC_LOOP;
			fabric->bport.pid = FUNC0(bfa);
			fabric->bport.pid = FUNC7(fabric->bport.pid);
			FUNC9(fabric,
					bfa_fcs_fabric_sm_online);
			FUNC5(fabric);
			FUNC6(&fabric->bport);
		} else {
			FUNC9(fabric, bfa_fcs_fabric_sm_flogi);
			FUNC4(fabric);
		}
		break;

	case BFA_FCS_FABRIC_SM_LINK_UP:
	case BFA_FCS_FABRIC_SM_LINK_DOWN:
		break;

	case BFA_FCS_FABRIC_SM_DELETE:
		FUNC9(fabric, bfa_fcs_fabric_sm_deleting);
		FUNC3(fabric);
		break;

	default:
		FUNC8(fabric->fcs, event);
	}
}