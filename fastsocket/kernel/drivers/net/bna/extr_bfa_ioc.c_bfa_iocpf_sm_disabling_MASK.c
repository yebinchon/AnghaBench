#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bfa_iocpf {struct bfa_ioc* ioc; } ;
struct TYPE_2__ {int /*<<< orphan*/  ioc_fwstate; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; int /*<<< orphan*/  iocpf_timer; } ;
typedef  enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_IOC_FAIL ; 
#define  IOCPF_E_FAIL 131 
#define  IOCPF_E_FWRSP_DISABLE 130 
#define  IOCPF_E_FWRSP_ENABLE 129 
#define  IOCPF_E_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_iocpf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_iocpf_sm_disabling_sync ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
	struct bfa_ioc *ioc = iocpf->ioc;

	switch (event) {
	case IOCPF_E_FWRSP_DISABLE:
		FUNC2(&ioc->iocpf_timer);
		FUNC0(iocpf, bfa_iocpf_sm_disabling_sync);
		break;

	case IOCPF_E_FAIL:
		FUNC2(&ioc->iocpf_timer);
		/*
		 * !!! fall through !!!
		 */

	case IOCPF_E_TIMEOUT:
		FUNC3(BFI_IOC_FAIL, ioc->ioc_regs.ioc_fwstate);
		FUNC0(iocpf, bfa_iocpf_sm_disabling_sync);
		break;

	case IOCPF_E_FWRSP_ENABLE:
		break;

	default:
		FUNC1(event);
	}
}