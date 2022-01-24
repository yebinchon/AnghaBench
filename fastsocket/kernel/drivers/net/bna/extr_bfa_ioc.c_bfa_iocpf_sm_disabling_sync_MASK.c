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
struct bfa_ioc {int dummy; } ;
typedef  enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;

/* Variables and functions */
#define  IOCPF_E_FAIL 130 
#define  IOCPF_E_SEMLOCKED 129 
#define  IOCPF_E_SEM_ERROR 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_iocpf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  bfa_iocpf_sm_disabled ; 
 int /*<<< orphan*/  bfa_iocpf_sm_fail ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
	struct bfa_ioc *ioc = iocpf->ioc;

	switch (event) {
	case IOCPF_E_SEMLOCKED:
		FUNC2(ioc);
		FUNC3(ioc);
		FUNC0(iocpf, bfa_iocpf_sm_disabled);
		break;

	case IOCPF_E_SEM_ERROR:
		FUNC0(iocpf, bfa_iocpf_sm_fail);
		FUNC1(ioc);
		break;

	case IOCPF_E_FAIL:
		break;

	default:
		FUNC4(event);
	}
}