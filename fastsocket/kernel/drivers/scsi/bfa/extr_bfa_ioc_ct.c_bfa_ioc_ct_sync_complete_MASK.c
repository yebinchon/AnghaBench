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
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  ioc_fail_sync; int /*<<< orphan*/  alt_ioc_fwstate; int /*<<< orphan*/  ioc_fwstate; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int BFI_IOC_FAIL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct bfa_ioc_s*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfa_boolean_t
FUNC6(struct bfa_ioc_s *ioc)
{
	uint32_t r32 = FUNC4(ioc->ioc_regs.ioc_fail_sync);
	uint32_t sync_reqd = FUNC2(r32);
	uint32_t sync_ackd = FUNC1(r32);
	uint32_t tmp_ackd;

	if (sync_ackd == 0)
		return BFA_TRUE;

	/*
	 * The check below is to see whether any other PCI fn
	 * has reinitialized the ASIC (reset sync_ackd bits)
	 * and failed again while this IOC was waiting for hw
	 * semaphore (in bfa_iocpf_sm_semwait()).
	 */
	tmp_ackd = sync_ackd;
	if ((sync_reqd &  FUNC3(ioc)) &&
		!(sync_ackd & FUNC3(ioc)))
		sync_ackd |= FUNC3(ioc);

	if (sync_reqd == sync_ackd) {
		FUNC5(FUNC0(r32),
			ioc->ioc_regs.ioc_fail_sync);
		FUNC5(BFI_IOC_FAIL, ioc->ioc_regs.ioc_fwstate);
		FUNC5(BFI_IOC_FAIL, ioc->ioc_regs.alt_ioc_fwstate);
		return BFA_TRUE;
	}

	/*
	 * If another PCI fn reinitialized and failed again while
	 * this IOC was waiting for hw sem, the sync_ackd bit for
	 * this IOC need to be set again to allow reinitialization.
	 */
	if (tmp_ackd != sync_ackd)
		FUNC5((r32 | sync_ackd), ioc->ioc_regs.ioc_fail_sync);

	return BFA_FALSE;
}