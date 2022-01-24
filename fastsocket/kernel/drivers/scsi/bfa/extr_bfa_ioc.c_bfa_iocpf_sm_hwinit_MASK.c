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
struct bfa_iocpf_s {struct bfa_ioc_s* ioc; } ;
struct TYPE_2__ {int /*<<< orphan*/  ioc_sem_reg; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;
typedef  enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;

/* Variables and functions */
#define  IOCPF_E_DISABLE 130 
#define  IOCPF_E_FWREADY 129 
#define  IOCPF_E_TIMEOUT 128 
 int /*<<< orphan*/  IOC_E_PFFAILED ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_iocpf_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  bfa_iocpf_sm_disabled ; 
 int /*<<< orphan*/  bfa_iocpf_sm_enabling ; 
 int /*<<< orphan*/  bfa_iocpf_sm_initfail_sync ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc_s*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_ioc_s*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct bfa_iocpf_s *iocpf, enum iocpf_event event)
{
	struct bfa_ioc_s *ioc = iocpf->ioc;

	FUNC5(ioc, event);

	switch (event) {
	case IOCPF_E_FWREADY:
		FUNC1(iocpf, bfa_iocpf_sm_enabling);
		break;

	case IOCPF_E_TIMEOUT:
		FUNC6(1, ioc->ioc_regs.ioc_sem_reg);
		FUNC0(ioc, IOC_E_PFFAILED);
		FUNC1(iocpf, bfa_iocpf_sm_initfail_sync);
		break;

	case IOCPF_E_DISABLE:
		FUNC3(ioc);
		FUNC2(ioc);
		FUNC6(1, ioc->ioc_regs.ioc_sem_reg);
		FUNC1(iocpf, bfa_iocpf_sm_disabled);
		break;

	default:
		FUNC4(ioc, event);
	}
}