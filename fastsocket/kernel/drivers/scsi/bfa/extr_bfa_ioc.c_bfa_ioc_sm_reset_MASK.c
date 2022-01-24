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
struct bfa_ioc_s {int dummy; } ;
typedef  enum ioc_event { ____Placeholder_ioc_event } ioc_event ;

/* Variables and functions */
#define  IOC_E_DETACH 130 
#define  IOC_E_DISABLE 129 
#define  IOC_E_ENABLE 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  bfa_ioc_sm_enabling ; 
 int /*<<< orphan*/  bfa_ioc_sm_uninit ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc_s*,int) ; 

__attribute__((used)) static void
FUNC4(struct bfa_ioc_s *ioc, enum ioc_event event)
{
	FUNC3(ioc, event);

	switch (event) {
	case IOC_E_ENABLE:
		FUNC0(ioc, bfa_ioc_sm_enabling);
		break;

	case IOC_E_DISABLE:
		FUNC1(ioc);
		break;

	case IOC_E_DETACH:
		FUNC0(ioc, bfa_ioc_sm_uninit);
		break;

	default:
		FUNC2(ioc, event);
	}
}