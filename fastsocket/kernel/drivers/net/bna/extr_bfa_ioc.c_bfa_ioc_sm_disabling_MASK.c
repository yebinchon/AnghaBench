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
struct bfa_ioc {int dummy; } ;
typedef  enum ioc_event { ____Placeholder_ioc_event } ioc_event ;

/* Variables and functions */
#define  IOC_E_DISABLED 130 
#define  IOC_E_HWERROR 129 
#define  IOC_E_HWFAILED 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  bfa_ioc_sm_disabled ; 
 int /*<<< orphan*/  bfa_ioc_sm_hwfail ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct bfa_ioc *ioc, enum ioc_event event)
{
	switch (event) {
	case IOC_E_DISABLED:
		FUNC0(ioc, bfa_ioc_sm_disabled);
		break;

	case IOC_E_HWERROR:
		/*
		 * No state change.  Will move to disabled state
		 * after iocpf sm completes failure processing and
		 * moves to disabled state.
		 */
		FUNC2(ioc);
		break;

	case IOC_E_HWFAILED:
		FUNC0(ioc, bfa_ioc_sm_hwfail);
		FUNC1(ioc);
		break;

	default:
		FUNC3(event);
	}
}