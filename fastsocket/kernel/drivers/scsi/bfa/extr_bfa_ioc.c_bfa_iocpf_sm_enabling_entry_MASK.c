#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bfa_iocpf_s {TYPE_2__* ioc; } ;
struct TYPE_5__ {int /*<<< orphan*/  bfa; TYPE_1__* cbfn; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* reset_cbfn ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bfa_iocpf_s *iocpf)
{
	FUNC1(iocpf->ioc);
	/*
	 * Enable Interrupts before sending fw IOC ENABLE cmd.
	 */
	iocpf->ioc->cbfn->reset_cbfn(iocpf->ioc->bfa);
	FUNC0(iocpf->ioc);
}