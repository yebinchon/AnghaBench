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
struct bfa_iocpf {int /*<<< orphan*/  auto_recover; struct bfa_ioc* ioc; } ;
struct TYPE_2__ {int /*<<< orphan*/  ioc_fwstate; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;
typedef  enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_IOC_FAIL ; 
#define  IOCPF_E_DISABLE 131 
#define  IOCPF_E_FAIL 130 
#define  IOCPF_E_SEMLOCKED 129 
#define  IOCPF_E_SEM_ERROR 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_iocpf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  bfa_iocpf_sm_disabling_sync ; 
 int /*<<< orphan*/  bfa_iocpf_sm_fail ; 
 int /*<<< orphan*/  bfa_iocpf_sm_hwinit ; 
 int /*<<< orphan*/  bfa_iocpf_sm_semwait ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
	struct bfa_ioc *ioc = iocpf->ioc;

	switch (event) {
	case IOCPF_E_SEMLOCKED:
		FUNC4(ioc);
		FUNC2(ioc);
		if (!iocpf->auto_recover) {
			FUNC6(ioc);
			FUNC9(BFI_IOC_FAIL, ioc->ioc_regs.ioc_fwstate);
			FUNC7(ioc);
			FUNC0(iocpf, bfa_iocpf_sm_fail);
		} else {
			if (FUNC5(ioc))
				FUNC0(iocpf, bfa_iocpf_sm_hwinit);
			else {
				FUNC7(ioc);
				FUNC0(iocpf, bfa_iocpf_sm_semwait);
			}
		}
		break;

	case IOCPF_E_SEM_ERROR:
		FUNC0(iocpf, bfa_iocpf_sm_fail);
		FUNC3(ioc);
		break;

	case IOCPF_E_DISABLE:
		FUNC1(ioc);
		FUNC0(iocpf, bfa_iocpf_sm_disabling_sync);
		break;

	case IOCPF_E_FAIL:
		break;

	default:
		FUNC8(event);
	}
}