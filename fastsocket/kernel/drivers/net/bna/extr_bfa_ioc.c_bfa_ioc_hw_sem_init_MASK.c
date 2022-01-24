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
struct bfi_ioc_image_hdr {int /*<<< orphan*/  exec; } ;
struct TYPE_2__ {int /*<<< orphan*/  ioc_init_sem_reg; int /*<<< orphan*/  ioc_sem_reg; int /*<<< orphan*/  alt_ioc_fwstate; int /*<<< orphan*/  ioc_fwstate; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;

/* Variables and functions */
 scalar_t__ BFI_FWBOOT_TYPE_NORMAL ; 
 int BFI_IOC_UNINIT ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*,struct bfi_ioc_image_hdr*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bfa_ioc *ioc)
{
	struct bfi_ioc_image_hdr fwhdr;
	u32 fwstate, r32;

	/* Spin on init semaphore to serialize. */
	r32 = FUNC2(ioc->ioc_regs.ioc_init_sem_reg);
	while (r32 & 0x1) {
		FUNC4(20);
		r32 = FUNC2(ioc->ioc_regs.ioc_init_sem_reg);
	}

	fwstate = FUNC2(ioc->ioc_regs.ioc_fwstate);
	if (fwstate == BFI_IOC_UNINIT) {
		FUNC5(1, ioc->ioc_regs.ioc_init_sem_reg);
		return;
	}

	FUNC1(ioc, &fwhdr);

	if (FUNC3(fwhdr.exec) == BFI_FWBOOT_TYPE_NORMAL) {
		FUNC5(1, ioc->ioc_regs.ioc_init_sem_reg);
		return;
	}

	FUNC0(ioc);
	FUNC5(BFI_IOC_UNINIT, ioc->ioc_regs.ioc_fwstate);
	FUNC5(BFI_IOC_UNINIT, ioc->ioc_regs.alt_ioc_fwstate);

	/*
	 * Try to lock and then unlock the semaphore.
	 */
	FUNC2(ioc->ioc_regs.ioc_sem_reg);
	FUNC5(1, ioc->ioc_regs.ioc_sem_reg);

	/* Unlock init semaphore */
	FUNC5(1, ioc->ioc_regs.ioc_init_sem_reg);
}