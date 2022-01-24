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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  alt_ioc_fwstate; int /*<<< orphan*/  ioc_fwstate; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;
typedef  enum bfi_fwboot_type { ____Placeholder_bfi_fwboot_type } bfi_fwboot_type ;

/* Variables and functions */
 scalar_t__ BFA_STATUS_OK ; 
 int BFI_FWBOOT_TYPE_MEMTEST ; 
 int /*<<< orphan*/  BFI_IOC_INITING ; 
 int /*<<< orphan*/  BFI_IOC_MEMTEST ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*) ; 
 scalar_t__ FUNC3 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ioc_boots ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bfa_ioc *ioc, enum bfi_fwboot_type boot_type,
		u32 boot_env)
{
	FUNC4(ioc, ioc_boots);

	if (FUNC3(ioc) != BFA_STATUS_OK)
		return;

	/**
	 * Initialize IOC state of all functions on a chip reset.
	 */
	if (boot_type == BFI_FWBOOT_TYPE_MEMTEST) {
		FUNC5(BFI_IOC_MEMTEST, ioc->ioc_regs.ioc_fwstate);
		FUNC5(BFI_IOC_MEMTEST, ioc->ioc_regs.alt_ioc_fwstate);
	} else {
		FUNC5(BFI_IOC_INITING, ioc->ioc_regs.ioc_fwstate);
		FUNC5(BFI_IOC_INITING, ioc->ioc_regs.alt_ioc_fwstate);
	}

	FUNC2(ioc);
	FUNC0(ioc, boot_type, boot_env);
	FUNC1(ioc);
}