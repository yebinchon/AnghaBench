#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bfa_iocfc_s {TYPE_2__* bfa; } ;
typedef  enum iocfc_event { ____Placeholder_iocfc_event } iocfc_event ;
struct TYPE_6__ {int /*<<< orphan*/  dis_hcb_qe; int /*<<< orphan*/  op_status; } ;
struct TYPE_7__ {TYPE_1__ iocfc; int /*<<< orphan*/  ioc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_STATUS_OK ; 
#define  IOCFC_E_DISABLE 132 
#define  IOCFC_E_IOC_DISABLED 131 
#define  IOCFC_E_IOC_ENABLED 130 
#define  IOCFC_E_IOC_FAILED 129 
#define  IOCFC_E_STOP 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_iocfc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_iocfc_disable_cb ; 
 int /*<<< orphan*/  bfa_iocfc_sm_dconf_read ; 
 int /*<<< orphan*/  bfa_iocfc_sm_stopped ; 
 int /*<<< orphan*/  bfa_iocfc_sm_stopping ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC5(struct bfa_iocfc_s *iocfc, enum iocfc_event event)
{
	FUNC4(iocfc->bfa, event);

	switch (event) {
	case IOCFC_E_STOP:
		FUNC1(iocfc, bfa_iocfc_sm_stopping);
		break;
	case IOCFC_E_DISABLE:
		FUNC2(&iocfc->bfa->ioc);
		break;
	case IOCFC_E_IOC_ENABLED:
		FUNC1(iocfc, bfa_iocfc_sm_dconf_read);
		break;
	case IOCFC_E_IOC_DISABLED:
		FUNC1(iocfc, bfa_iocfc_sm_stopped);
		iocfc->bfa->iocfc.op_status = BFA_STATUS_OK;
		FUNC0(iocfc->bfa, &iocfc->bfa->iocfc.dis_hcb_qe,
			     bfa_iocfc_disable_cb, iocfc->bfa);
		break;
	case IOCFC_E_IOC_FAILED:
		break;
	default:
		FUNC3(iocfc->bfa, event);
		break;
	}
}