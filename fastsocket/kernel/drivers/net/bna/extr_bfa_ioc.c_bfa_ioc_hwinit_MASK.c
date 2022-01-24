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
struct TYPE_2__ {int /*<<< orphan*/  ioc_fwstate; } ;
struct bfa_ioc {int /*<<< orphan*/  iocpf; TYPE_1__ ioc_regs; } ;
typedef  enum bfi_ioc_state { ____Placeholder_bfi_ioc_state } bfi_ioc_state ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_FWBOOT_ENV_OS ; 
 int /*<<< orphan*/  BFI_FWBOOT_TYPE_NORMAL ; 
 int BFI_IOC_DISABLED ; 
 int BFI_IOC_INITING ; 
 int BFI_IOC_OP ; 
 int BFI_IOC_UNINIT ; 
 int /*<<< orphan*/  IOCPF_E_FWREADY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bfa_ioc *ioc, bool force)
{
	enum bfi_ioc_state ioc_fwstate;
	bool fwvalid;
	u32 boot_env;

	ioc_fwstate = FUNC5(ioc->ioc_regs.ioc_fwstate);

	if (force)
		ioc_fwstate = BFI_IOC_UNINIT;

	boot_env = BFI_FWBOOT_ENV_OS;

	/**
	 * check if firmware is valid
	 */
	fwvalid = (ioc_fwstate == BFI_IOC_UNINIT) ?
		false : FUNC2(ioc, boot_env);

	if (!fwvalid) {
		FUNC1(ioc, BFI_FWBOOT_TYPE_NORMAL, boot_env);
		FUNC4(ioc);
		return;
	}

	/**
	 * If hardware initialization is in progress (initialized by other IOC),
	 * just wait for an initialization completion interrupt.
	 */
	if (ioc_fwstate == BFI_IOC_INITING) {
		FUNC4(ioc);
		return;
	}

	/**
	 * If IOC function is disabled and firmware version is same,
	 * just re-enable IOC.
	 */
	if (ioc_fwstate == BFI_IOC_DISABLED || ioc_fwstate == BFI_IOC_OP) {
		/**
		 * When using MSI-X any pending firmware ready event should
		 * be flushed. Otherwise MSI-X interrupts are not delivered.
		 */
		FUNC3(ioc);
		FUNC0(&ioc->iocpf, IOCPF_E_FWREADY);
		return;
	}

	/**
	 * Initialize the h/w for any other states.
	 */
	FUNC1(ioc, BFI_FWBOOT_TYPE_NORMAL, boot_env);
	FUNC4(ioc);
}