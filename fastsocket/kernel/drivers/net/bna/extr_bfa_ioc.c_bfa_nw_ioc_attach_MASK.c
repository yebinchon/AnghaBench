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
struct bfa_ioc_cbfn {int dummy; } ;
struct TYPE_2__ {struct bfa_ioc* ioc; } ;
struct bfa_ioc {int fcmode; int pllinit; int dbg_fwsave_once; int /*<<< orphan*/  notify_q; TYPE_1__ iocpf; struct bfa_ioc_cbfn* cbfn; void* bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IOC_E_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  bfa_ioc_sm_uninit ; 

void
FUNC4(struct bfa_ioc *ioc, void *bfa, struct bfa_ioc_cbfn *cbfn)
{
	ioc->bfa	= bfa;
	ioc->cbfn	= cbfn;
	ioc->fcmode	= false;
	ioc->pllinit	= false;
	ioc->dbg_fwsave_once = true;
	ioc->iocpf.ioc  = ioc;

	FUNC3(ioc);
	FUNC0(&ioc->notify_q);

	FUNC2(ioc, bfa_ioc_sm_uninit);
	FUNC1(ioc, IOC_E_RESET);
}