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
struct bfa_timer_mod_s {int dummy; } ;
struct TYPE_2__ {struct bfa_ioc_s* ioc; } ;
struct bfa_ioc_s {int /*<<< orphan*/  notify_q; TYPE_1__ iocpf; int /*<<< orphan*/  dbg_fwsave_once; void* pllinit; void* fcmode; struct bfa_timer_mod_s* timer_mod; struct bfa_ioc_cbfn_s* cbfn; void* bfa; } ;
struct bfa_ioc_cbfn_s {int dummy; } ;

/* Variables and functions */
 void* BFA_FALSE ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IOC_E_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  bfa_ioc_sm_uninit ; 

void
FUNC4(struct bfa_ioc_s *ioc, void *bfa, struct bfa_ioc_cbfn_s *cbfn,
	       struct bfa_timer_mod_s *timer_mod)
{
	ioc->bfa	= bfa;
	ioc->cbfn	= cbfn;
	ioc->timer_mod	= timer_mod;
	ioc->fcmode	= BFA_FALSE;
	ioc->pllinit	= BFA_FALSE;
	ioc->dbg_fwsave_once = BFA_TRUE;
	ioc->iocpf.ioc	= ioc;

	FUNC3(ioc);
	FUNC0(&ioc->notify_q);

	FUNC2(ioc, bfa_ioc_sm_uninit);
	FUNC1(ioc, IOC_E_RESET);
}