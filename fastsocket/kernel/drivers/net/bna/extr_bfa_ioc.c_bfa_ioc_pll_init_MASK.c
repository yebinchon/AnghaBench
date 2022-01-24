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
struct TYPE_2__ {int /*<<< orphan*/  ioc_init_sem_reg; } ;
struct bfa_ioc {int pllinit; TYPE_1__ ioc_regs; } ;
typedef  enum bfa_status { ____Placeholder_bfa_status } bfa_status ;

/* Variables and functions */
 int BFA_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum bfa_status
FUNC4(struct bfa_ioc *ioc)
{
	/*
	 *  Hold semaphore so that nobody can access the chip during init.
	 */
	FUNC2(ioc->ioc_regs.ioc_init_sem_reg);

	FUNC1(ioc);

	ioc->pllinit = true;

	/* Initialize LMEM */
	FUNC0(ioc);

	/*
	 *  release semaphore.
	 */
	FUNC3(ioc->ioc_regs.ioc_init_sem_reg);

	return BFA_STATUS_OK;
}