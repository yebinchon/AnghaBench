#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bfad_s {int dummy; } ;
struct bfa_fcport_s {TYPE_1__* bfa; int /*<<< orphan*/  pwwn; int /*<<< orphan*/  event_cbfn; } ;
typedef  enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;
struct TYPE_3__ {int /*<<< orphan*/  plog; scalar_t__ bfad; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
#define  BFA_FCPORT_SM_DISABLE 135 
#define  BFA_FCPORT_SM_ENABLE 134 
#define  BFA_FCPORT_SM_FAA_MISCONFIG 133 
#define  BFA_FCPORT_SM_FWRSP 132 
#define  BFA_FCPORT_SM_HWFAIL 131 
#define  BFA_FCPORT_SM_LINKDOWN 130 
#define  BFA_FCPORT_SM_LINKUP 129 
#define  BFA_FCPORT_SM_STOP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  BFA_PL_EID_PORT_DISABLE ; 
 int /*<<< orphan*/  BFA_PL_MID_HAL ; 
 int /*<<< orphan*/  BFA_PORT_AEN_DISABLE ; 
 int /*<<< orphan*/  BFA_PORT_AEN_DISCONNECT ; 
 int /*<<< orphan*/  BFA_PORT_LINKUP ; 
 int BFA_STRING_32 ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcport_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcport_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcport_s*) ; 
 int /*<<< orphan*/  bfa_fcport_sm_disabling ; 
 int /*<<< orphan*/  bfa_fcport_sm_disabling_qwait ; 
 int /*<<< orphan*/  bfa_fcport_sm_faa_misconfig ; 
 int /*<<< orphan*/  bfa_fcport_sm_iocdown ; 
 int /*<<< orphan*/  bfa_fcport_sm_linkdown ; 
 int /*<<< orphan*/  bfa_fcport_sm_linkup ; 
 int /*<<< orphan*/  bfa_fcport_sm_stopped ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcport_s*) ; 
 int /*<<< orphan*/  bfa_log_level ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bfa_fcport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct bfa_fcport_s *fcport,
						enum bfa_fcport_sm_event event)
{
	char pwwn_buf[BFA_STRING_32];
	struct bfad_s *bfad = (struct bfad_s *)fcport->bfa->bfad;
	FUNC10(fcport->bfa, event);

	switch (event) {
	case BFA_FCPORT_SM_FWRSP:
	case BFA_FCPORT_SM_LINKDOWN:
		FUNC9(fcport, bfa_fcport_sm_linkdown);
		break;

	case BFA_FCPORT_SM_LINKUP:
		FUNC6(fcport);
		FUNC9(fcport, bfa_fcport_sm_linkup);

		FUNC1(!fcport->event_cbfn);
		FUNC4(fcport, BFA_PORT_LINKUP, BFA_FALSE);
		break;

	case BFA_FCPORT_SM_ENABLE:
		/*
		 * Already being enabled.
		 */
		break;

	case BFA_FCPORT_SM_DISABLE:
		if (FUNC5(fcport))
			FUNC9(fcport, bfa_fcport_sm_disabling);
		else
			FUNC9(fcport,
					 bfa_fcport_sm_disabling_qwait);

		FUNC7(fcport->bfa->plog, BFA_PL_MID_HAL,
				BFA_PL_EID_PORT_DISABLE, 0, "Port Disable");
		FUNC11(pwwn_buf, fcport->pwwn);
		FUNC0(KERN_INFO, bfad, bfa_log_level,
			"Base port disabled: WWN = %s\n", pwwn_buf);
		FUNC2(fcport, BFA_PORT_AEN_DISABLE);
		break;

	case BFA_FCPORT_SM_STOP:
		FUNC9(fcport, bfa_fcport_sm_stopped);
		break;

	case BFA_FCPORT_SM_HWFAIL:
		FUNC9(fcport, bfa_fcport_sm_iocdown);
		break;

	case BFA_FCPORT_SM_FAA_MISCONFIG:
		FUNC3(fcport);
		FUNC2(fcport, BFA_PORT_AEN_DISCONNECT);
		FUNC9(fcport, bfa_fcport_sm_faa_misconfig);
		break;

	default:
		FUNC8(fcport->bfa, event);
	}
}