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
struct TYPE_2__ {int /*<<< orphan*/  auto_recover; } ;
struct bfa_ioc {TYPE_1__ iocpf; } ;
typedef  enum ioc_event { ____Placeholder_ioc_event } ioc_event ;

/* Variables and functions */
#define  IOC_E_DISABLE 132 
#define  IOC_E_ENABLE 131 
#define  IOC_E_HBFAIL 130 
#define  IOC_E_HWERROR 129 
#define  IOC_E_PFFAILED 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  bfa_ioc_sm_disabling ; 
 int /*<<< orphan*/  bfa_ioc_sm_fail ; 
 int /*<<< orphan*/  bfa_ioc_sm_fail_retry ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct bfa_ioc *ioc, enum ioc_event event)
{
	switch (event) {
	case IOC_E_ENABLE:
		break;

	case IOC_E_DISABLE:
		FUNC2(ioc);
		FUNC0(ioc, bfa_ioc_sm_disabling);
		break;

	case IOC_E_PFFAILED:
	case IOC_E_HWERROR:
		FUNC2(ioc);
		/* !!! fall through !!! */
	case IOC_E_HBFAIL:
		if (ioc->iocpf.auto_recover)
			FUNC0(ioc, bfa_ioc_sm_fail_retry);
		else
			FUNC0(ioc, bfa_ioc_sm_fail);

		FUNC1(ioc);

		if (event != IOC_E_PFFAILED)
			FUNC3(ioc);
		break;

	default:
		FUNC4(event);
	}
}