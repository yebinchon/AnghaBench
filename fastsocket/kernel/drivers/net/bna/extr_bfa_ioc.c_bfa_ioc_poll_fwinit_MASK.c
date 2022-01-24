#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ poll_time; } ;
struct TYPE_3__ {int /*<<< orphan*/  ioc_fwstate; } ;
struct bfa_ioc {int /*<<< orphan*/  iocpf_timer; TYPE_2__ iocpf; TYPE_1__ ioc_regs; } ;

/* Variables and functions */
 scalar_t__ BFA_IOC_POLL_TOV ; 
 scalar_t__ BFA_IOC_TOV ; 
 scalar_t__ BFI_IOC_DISABLED ; 
 int /*<<< orphan*/  IOCPF_E_FWREADY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bfa_ioc *ioc)
{
	u32 fwstate = FUNC4(ioc->ioc_regs.ioc_fwstate);

	if (fwstate == BFI_IOC_DISABLED) {
		FUNC0(&ioc->iocpf, IOCPF_E_FWREADY);
		return;
	}

	if (ioc->iocpf.poll_time >= BFA_IOC_TOV) {
		FUNC1(ioc);
	} else {
		ioc->iocpf.poll_time += BFA_IOC_POLL_TOV;
		FUNC2(&ioc->iocpf_timer, jiffies +
			FUNC3(BFA_IOC_POLL_TOV));
	}
}