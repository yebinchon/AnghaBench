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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  ioc_sem_reg; } ;
struct bfa_ioc_s {int /*<<< orphan*/  iocpf; TYPE_1__ ioc_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOCPF_E_SEMLOCKED ; 
 int /*<<< orphan*/  IOCPF_E_SEM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfa_ioc_s *ioc)
{
	u32	r32;

	/*
	 * First read to the semaphore register will return 0, subsequent reads
	 * will return 1. Semaphore is released by writing 1 to the register
	 */
	r32 = FUNC3(ioc->ioc_regs.ioc_sem_reg);
	if (r32 == ~0) {
		FUNC0(r32 == ~0);
		FUNC1(&ioc->iocpf, IOCPF_E_SEM_ERROR);
		return;
	}
	if (!(r32 & 1)) {
		FUNC1(&ioc->iocpf, IOCPF_E_SEMLOCKED);
		return;
	}

	FUNC2(ioc);
}