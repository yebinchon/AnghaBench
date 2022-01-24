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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int poll_time; } ;
struct bfa_ioc_s {TYPE_1__ iocpf; } ;

/* Variables and functions */
 scalar_t__ BFA_IOC_POLL_TOV ; 
 int BFA_IOC_TOV ; 
 scalar_t__ BFI_IOC_DISABLED ; 
 int /*<<< orphan*/  IOCPF_E_FWREADY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc_s*,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct bfa_ioc_s *ioc)
{
	u32 fwstate = FUNC1(ioc);

	FUNC4(ioc, fwstate);

	if (fwstate == BFI_IOC_DISABLED) {
		FUNC0(&ioc->iocpf, IOCPF_E_FWREADY);
		return;
	}

	if (ioc->iocpf.poll_time >= (3 * BFA_IOC_TOV))
		FUNC3(ioc);
	else {
		ioc->iocpf.poll_time += BFA_IOC_POLL_TOV;
		FUNC2(ioc);
	}
}