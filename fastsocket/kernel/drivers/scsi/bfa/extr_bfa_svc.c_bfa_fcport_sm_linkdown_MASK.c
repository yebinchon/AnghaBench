#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int fipenabled; int fipfailed; } ;
struct TYPE_14__ {TYPE_3__ fcf; } ;
struct TYPE_15__ {TYPE_4__ vc_fcf; } ;
struct TYPE_16__ {TYPE_5__ attr; } ;
struct bfi_fcport_event_s {TYPE_6__ link_state; } ;
struct bfad_s {int dummy; } ;
struct TYPE_18__ {int /*<<< orphan*/  state; } ;
struct TYPE_17__ {int /*<<< orphan*/  qos_enabled; } ;
struct TYPE_11__ {struct bfi_fcport_event_s* event; } ;
struct TYPE_12__ {TYPE_1__ i2hmsg; } ;
struct bfa_fcport_s {TYPE_9__* bfa; int /*<<< orphan*/  pwwn; TYPE_8__ qos_attr; TYPE_7__ cfg; int /*<<< orphan*/  event_cbfn; TYPE_2__ event_arg; } ;
typedef  enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;
struct TYPE_19__ {int /*<<< orphan*/  plog; int /*<<< orphan*/  ioc; scalar_t__ bfad; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
#define  BFA_FCPORT_SM_DISABLE 134 
#define  BFA_FCPORT_SM_ENABLE 133 
#define  BFA_FCPORT_SM_FAA_MISCONFIG 132 
#define  BFA_FCPORT_SM_HWFAIL 131 
#define  BFA_FCPORT_SM_LINKDOWN 130 
#define  BFA_FCPORT_SM_LINKUP 129 
#define  BFA_FCPORT_SM_STOP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  BFA_PL_EID_FIP_FCF_DISC ; 
 int /*<<< orphan*/  BFA_PL_EID_PORT_DISABLE ; 
 int /*<<< orphan*/  BFA_PL_EID_PORT_ST_CHANGE ; 
 int /*<<< orphan*/  BFA_PL_MID_HAL ; 
 int /*<<< orphan*/  BFA_PORT_AEN_DISABLE ; 
 int /*<<< orphan*/  BFA_PORT_AEN_DISCONNECT ; 
 int /*<<< orphan*/  BFA_PORT_AEN_ONLINE ; 
 int /*<<< orphan*/  BFA_PORT_AEN_QOS_NEG ; 
 int /*<<< orphan*/  BFA_PORT_LINKUP ; 
 int /*<<< orphan*/  BFA_QOS_ONLINE ; 
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
 int /*<<< orphan*/  bfa_fcport_sm_linkup ; 
 int /*<<< orphan*/  bfa_fcport_sm_stopped ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcport_s*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_log_level ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bfa_fcport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct bfa_fcport_s *fcport,
						enum bfa_fcport_sm_event event)
{
	struct bfi_fcport_event_s *pevent = fcport->event_arg.i2hmsg.event;
	char pwwn_buf[BFA_STRING_32];
	struct bfad_s *bfad = (struct bfad_s *)fcport->bfa->bfad;

	FUNC11(fcport->bfa, event);

	switch (event) {
	case BFA_FCPORT_SM_LINKUP:
		FUNC6(fcport);
		FUNC10(fcport, bfa_fcport_sm_linkup);
		FUNC1(!fcport->event_cbfn);
		FUNC8(fcport->bfa->plog, BFA_PL_MID_HAL,
				BFA_PL_EID_PORT_ST_CHANGE, 0, "Port Linkup");
		if (!FUNC7(&fcport->bfa->ioc)) {

			FUNC11(fcport->bfa,
				pevent->link_state.attr.vc_fcf.fcf.fipenabled);
			FUNC11(fcport->bfa,
				pevent->link_state.attr.vc_fcf.fcf.fipfailed);

			if (pevent->link_state.attr.vc_fcf.fcf.fipfailed)
				FUNC8(fcport->bfa->plog, BFA_PL_MID_HAL,
					BFA_PL_EID_FIP_FCF_DISC, 0,
					"FIP FCF Discovery Failed");
			else
				FUNC8(fcport->bfa->plog, BFA_PL_MID_HAL,
					BFA_PL_EID_FIP_FCF_DISC, 0,
					"FIP FCF Discovered");
		}

		FUNC4(fcport, BFA_PORT_LINKUP, BFA_FALSE);
		FUNC12(pwwn_buf, fcport->pwwn);
		FUNC0(KERN_INFO, bfad, bfa_log_level,
			"Base port online: WWN = %s\n", pwwn_buf);
		FUNC2(fcport, BFA_PORT_AEN_ONLINE);

		/* If QoS is enabled and it is not online, send AEN */
		if (fcport->cfg.qos_enabled &&
		    fcport->qos_attr.state != BFA_QOS_ONLINE)
			FUNC2(fcport, BFA_PORT_AEN_QOS_NEG);
		break;

	case BFA_FCPORT_SM_LINKDOWN:
		/*
		 * Possible to get link down event.
		 */
		break;

	case BFA_FCPORT_SM_ENABLE:
		/*
		 * Already enabled.
		 */
		break;

	case BFA_FCPORT_SM_DISABLE:
		if (FUNC5(fcport))
			FUNC10(fcport, bfa_fcport_sm_disabling);
		else
			FUNC10(fcport,
					 bfa_fcport_sm_disabling_qwait);

		FUNC8(fcport->bfa->plog, BFA_PL_MID_HAL,
				BFA_PL_EID_PORT_DISABLE, 0, "Port Disable");
		FUNC12(pwwn_buf, fcport->pwwn);
		FUNC0(KERN_INFO, bfad, bfa_log_level,
			"Base port disabled: WWN = %s\n", pwwn_buf);
		FUNC2(fcport, BFA_PORT_AEN_DISABLE);
		break;

	case BFA_FCPORT_SM_STOP:
		FUNC10(fcport, bfa_fcport_sm_stopped);
		break;

	case BFA_FCPORT_SM_HWFAIL:
		FUNC10(fcport, bfa_fcport_sm_iocdown);
		break;

	case BFA_FCPORT_SM_FAA_MISCONFIG:
		FUNC3(fcport);
		FUNC2(fcport, BFA_PORT_AEN_DISCONNECT);
		FUNC10(fcport, bfa_fcport_sm_faa_misconfig);
		break;

	default:
		FUNC9(fcport->bfa, event);
	}
}