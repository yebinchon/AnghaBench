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
struct bfa_dport_s {int /*<<< orphan*/  bfa; TYPE_2__ i2hmsg; int /*<<< orphan*/  dynamic; int /*<<< orphan*/  test_state; } ;
typedef  enum bfa_dport_sm_event { ____Placeholder_bfa_dport_sm_event } bfa_dport_sm_event ;

/* Variables and functions */
#define  BFA_DPORT_SM_DISABLE 138 
#define  BFA_DPORT_SM_HWFAIL 137 
#define  BFA_DPORT_SM_SCN 136 
#define  BFA_DPORT_SM_START 135 
 int /*<<< orphan*/  BFA_DPORT_ST_COMP ; 
 int /*<<< orphan*/  BFA_DPORT_ST_INP ; 
 int /*<<< orphan*/  BFA_DPORT_ST_NO_SFP ; 
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFI_DPORT_DISABLE ; 
 int /*<<< orphan*/  BFI_DPORT_DYN_DISABLE ; 
#define  BFI_DPORT_SCN_DDPORT_DISABLE 134 
#define  BFI_DPORT_SCN_FCPORT_DISABLE 133 
#define  BFI_DPORT_SCN_SFP_REMOVED 132 
#define  BFI_DPORT_SCN_SUBTESTSTART 131 
#define  BFI_DPORT_SCN_TESTCOMP 130 
#define  BFI_DPORT_SCN_TESTSKIP 129 
#define  BFI_DPORT_SCN_TESTSTART 128 
 int /*<<< orphan*/  BFI_DPORT_START ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_dport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_dport_sm_disabled ; 
 int /*<<< orphan*/  bfa_dport_sm_disabling ; 
 int /*<<< orphan*/  bfa_dport_sm_disabling_qwait ; 
 int /*<<< orphan*/  bfa_dport_sm_dynamic_disabling ; 
 int /*<<< orphan*/  bfa_dport_sm_dynamic_disabling_qwait ; 
 int /*<<< orphan*/  bfa_dport_sm_starting ; 
 int /*<<< orphan*/  bfa_dport_sm_starting_qwait ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_dport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct bfa_dport_s *dport, enum bfa_dport_sm_event event)
{
	FUNC5(dport->bfa, event);

	switch (event) {
	case BFA_DPORT_SM_START:
		if (FUNC0(dport, BFI_DPORT_START))
			FUNC4(dport, bfa_dport_sm_starting);
		else
			FUNC4(dport, bfa_dport_sm_starting_qwait);
		break;

	case BFA_DPORT_SM_DISABLE:
		FUNC2(dport->bfa);
		if (FUNC0(dport, BFI_DPORT_DISABLE))
			FUNC4(dport, bfa_dport_sm_disabling);
		else
			FUNC4(dport, bfa_dport_sm_disabling_qwait);
		break;

	case BFA_DPORT_SM_HWFAIL:
		FUNC4(dport, bfa_dport_sm_disabled);
		break;

	case BFA_DPORT_SM_SCN:
		switch (dport->i2hmsg.scn.state) {
		case BFI_DPORT_SCN_TESTCOMP:
			dport->test_state = BFA_DPORT_ST_COMP;
			break;

		case BFI_DPORT_SCN_TESTSTART:
			dport->test_state = BFA_DPORT_ST_INP;
			break;

		case BFI_DPORT_SCN_TESTSKIP:
		case BFI_DPORT_SCN_SUBTESTSTART:
			/* no state change */
			break;

		case BFI_DPORT_SCN_SFP_REMOVED:
			dport->test_state = BFA_DPORT_ST_NO_SFP;
			break;

		case BFI_DPORT_SCN_DDPORT_DISABLE:
			FUNC1(dport->bfa);

			if (FUNC0(dport, BFI_DPORT_DYN_DISABLE))
				FUNC4(dport,
					 bfa_dport_sm_dynamic_disabling);
			else
				FUNC4(dport,
					 bfa_dport_sm_dynamic_disabling_qwait);
			break;

		case BFI_DPORT_SCN_FCPORT_DISABLE:
			FUNC1(dport->bfa);

			FUNC4(dport, bfa_dport_sm_disabled);
			dport->dynamic = BFA_FALSE;
			break;

		default:
			FUNC5(dport->bfa, dport->i2hmsg.scn.state);
			FUNC3(dport->bfa, event);
		}
		break;
	default:
		FUNC3(dport->bfa, event);
	}
}