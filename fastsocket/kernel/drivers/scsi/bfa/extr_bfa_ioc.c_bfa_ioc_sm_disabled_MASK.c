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
struct bfa_ioc_s {int /*<<< orphan*/  iocpf; int /*<<< orphan*/  bfa; TYPE_1__* cbfn; } ;
typedef  enum ioc_event { ____Placeholder_ioc_event } ioc_event ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable_cbfn ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IOCPF_E_STOP ; 
#define  IOC_E_DETACH 130 
#define  IOC_E_DISABLE 129 
#define  IOC_E_ENABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_ioc_sm_enabling ; 
 int /*<<< orphan*/  bfa_ioc_sm_uninit ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc_s*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bfa_ioc_s *ioc, enum ioc_event event)
{
	FUNC3(ioc, event);

	switch (event) {
	case IOC_E_ENABLE:
		FUNC1(ioc, bfa_ioc_sm_enabling);
		break;

	case IOC_E_DISABLE:
		ioc->cbfn->disable_cbfn(ioc->bfa);
		break;

	case IOC_E_DETACH:
		FUNC1(ioc, bfa_ioc_sm_uninit);
		FUNC0(&ioc->iocpf, IOCPF_E_STOP);
		break;

	default:
		FUNC2(ioc, event);
	}
}