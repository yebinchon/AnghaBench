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
struct bfa_fcs_vport_s {int /*<<< orphan*/  timer; int /*<<< orphan*/  lport; int /*<<< orphan*/  lps; } ;
typedef  enum bfa_fcs_vport_event { ____Placeholder_bfa_fcs_vport_event } bfa_fcs_vport_event ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCS_RETRY_TIMEOUT ; 
#define  BFA_FCS_VPORT_SM_DELETE 134 
#define  BFA_FCS_VPORT_SM_FABRIC_MAX 133 
#define  BFA_FCS_VPORT_SM_OFFLINE 132 
#define  BFA_FCS_VPORT_SM_RSP_DUP_WWN 131 
#define  BFA_FCS_VPORT_SM_RSP_ERROR 130 
#define  BFA_FCS_VPORT_SM_RSP_FAILED 129 
#define  BFA_FCS_VPORT_SM_RSP_OK 128 
 int /*<<< orphan*/  BFA_LPS_SM_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_vport_s*) ; 
 int FUNC2 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_error ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_fdisc_retry ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_fdisc_rsp_wait ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_vport_sm_online ; 
 int /*<<< orphan*/  bfa_fcs_vport_timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcs_vport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_vport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(struct bfa_fcs_vport_s *vport,
			enum bfa_fcs_vport_event event)
{
	FUNC8(FUNC1(vport), FUNC2(vport));
	FUNC8(FUNC1(vport), event);

	switch (event) {
	case BFA_FCS_VPORT_SM_DELETE:
		FUNC6(vport, bfa_fcs_vport_sm_fdisc_rsp_wait);
		break;

	case BFA_FCS_VPORT_SM_OFFLINE:
		FUNC6(vport, bfa_fcs_vport_sm_offline);
		FUNC5(vport->lps, BFA_LPS_SM_OFFLINE);
		break;

	case BFA_FCS_VPORT_SM_RSP_OK:
		FUNC6(vport, bfa_fcs_vport_sm_online);
		FUNC3(&vport->lport);
		break;

	case BFA_FCS_VPORT_SM_RSP_ERROR:
		FUNC6(vport, bfa_fcs_vport_sm_fdisc_retry);
		FUNC7(FUNC0(vport), &vport->timer,
				    bfa_fcs_vport_timeout, vport,
				    BFA_FCS_RETRY_TIMEOUT);
		break;

	case BFA_FCS_VPORT_SM_RSP_FAILED:
	case BFA_FCS_VPORT_SM_FABRIC_MAX:
		FUNC6(vport, bfa_fcs_vport_sm_offline);
		break;

	case BFA_FCS_VPORT_SM_RSP_DUP_WWN:
		FUNC6(vport, bfa_fcs_vport_sm_error);
		break;

	default:
		FUNC4(FUNC1(vport), event);
	}
}