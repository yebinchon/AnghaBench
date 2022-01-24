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
struct bfa_iocpf {struct bfa_ioc* ioc; } ;
struct bfa_ioc {int /*<<< orphan*/  iocpf_timer; } ;
typedef  enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;

/* Variables and functions */
#define  IOCPF_E_DISABLE 130 
#define  IOCPF_E_FWREADY 129 
#define  IOCPF_E_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_iocpf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  bfa_iocpf_sm_disabled ; 
 int /*<<< orphan*/  bfa_iocpf_sm_enabling ; 
 int /*<<< orphan*/  bfa_iocpf_sm_initfail_sync ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
	struct bfa_ioc *ioc = iocpf->ioc;

	switch (event) {
	case IOCPF_E_FWREADY:
		FUNC0(iocpf, bfa_iocpf_sm_enabling);
		break;

	case IOCPF_E_TIMEOUT:
		FUNC3(ioc);
			FUNC1(ioc);
		FUNC0(iocpf, bfa_iocpf_sm_initfail_sync);
		break;

	case IOCPF_E_DISABLE:
		FUNC5(&ioc->iocpf_timer);
		FUNC2(ioc);
		FUNC3(ioc);
		FUNC0(iocpf, bfa_iocpf_sm_disabled);
		break;

	default:
		FUNC4(event);
	}
}