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
struct bfa_iocpf {TYPE_2__* ioc; } ;
struct TYPE_4__ {int /*<<< orphan*/  bfa; TYPE_1__* cbfn; int /*<<< orphan*/  iocpf_timer; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* reset_cbfn ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_IOC_TOV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfa_iocpf *iocpf)
{
	FUNC1(&(iocpf->ioc)->iocpf_timer, jiffies +
		FUNC2(BFA_IOC_TOV));
	/**
	 * Enable Interrupts before sending fw IOC ENABLE cmd.
	 */
	iocpf->ioc->cbfn->reset_cbfn(iocpf->ioc->bfa);
	FUNC0(iocpf->ioc);
}