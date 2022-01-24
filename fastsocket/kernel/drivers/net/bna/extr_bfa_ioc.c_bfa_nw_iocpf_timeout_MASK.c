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
struct TYPE_2__ {int /*<<< orphan*/  fsm; } ;
struct bfa_ioc {TYPE_1__ iocpf; } ;
typedef  enum bfa_iocpf_state { ____Placeholder_bfa_iocpf_state } bfa_iocpf_state ;

/* Variables and functions */
 int BFA_IOCPF_HWINIT ; 
 int /*<<< orphan*/  IOCPF_E_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iocpf_sm_table ; 

void
FUNC3(void *ioc_arg)
{
	struct bfa_ioc  *ioc = (struct bfa_ioc *) ioc_arg;
	enum bfa_iocpf_state iocpf_st;

	iocpf_st = FUNC2(iocpf_sm_table, ioc->iocpf.fsm);

	if (iocpf_st == BFA_IOCPF_HWINIT)
		FUNC1(ioc);
	else
		FUNC0(&ioc->iocpf, IOCPF_E_TIMEOUT);
}