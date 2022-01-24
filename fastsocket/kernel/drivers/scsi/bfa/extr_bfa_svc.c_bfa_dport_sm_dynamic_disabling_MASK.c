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
struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ scn; } ;
struct bfa_dport_s {int /*<<< orphan*/  bfa; TYPE_2__ i2hmsg; int /*<<< orphan*/  dynamic; } ;
typedef  enum bfa_dport_sm_event { ____Placeholder_bfa_dport_sm_event } bfa_dport_sm_event ;

/* Variables and functions */
#define  BFA_DPORT_SM_HWFAIL 130 
#define  BFA_DPORT_SM_SCN 129 
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
#define  BFI_DPORT_SCN_DDPORT_DISABLED 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_dport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_dport_sm_disabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_dport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct bfa_dport_s *dport,
			       enum bfa_dport_sm_event event)
{
	FUNC4(dport->bfa, event);

	switch (event) {
	case BFA_DPORT_SM_SCN:
		switch (dport->i2hmsg.scn.state) {
		case BFI_DPORT_SCN_DDPORT_DISABLED:
			FUNC3(dport, bfa_dport_sm_disabled);
			dport->dynamic = BFA_FALSE;
			FUNC1(dport->bfa);
			break;

		default:
			FUNC4(dport->bfa, dport->i2hmsg.scn.state);
			FUNC2(dport->bfa, event);

		}
		break;

	case BFA_DPORT_SM_HWFAIL:
		FUNC3(dport, bfa_dport_sm_disabled);
		FUNC0(dport, BFA_STATUS_OK);
		break;

	default:
		FUNC2(dport->bfa, event);
	}
}