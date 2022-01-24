#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int loaded; int ldt_sel; int gs_ldt_reload_needed; int fs_sel; int fs_reload_needed; int gs_sel; } ;
struct vcpu_vmx {int save_nmsrs; TYPE_2__* guest_msrs; int /*<<< orphan*/  msr_guest_kernel_gs_base; int /*<<< orphan*/  msr_host_kernel_gs_base; int /*<<< orphan*/  vcpu; TYPE_1__ host_state; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  data; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_FS_BASE ; 
 int /*<<< orphan*/  HOST_FS_SELECTOR ; 
 int /*<<< orphan*/  HOST_GS_BASE ; 
 int /*<<< orphan*/  HOST_GS_SELECTOR ; 
 int /*<<< orphan*/  MSR_FS_BASE ; 
 int /*<<< orphan*/  MSR_GS_BASE ; 
 int /*<<< orphan*/  MSR_KERNEL_GS_BASE ; 
 int /*<<< orphan*/  fs ; 
 int /*<<< orphan*/  gs ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct vcpu_vmx* FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC7(vcpu);
	int i;

	if (vmx->host_state.loaded)
		return;

	vmx->host_state.loaded = 1;
	/*
	 * Set host fs and gs selectors.  Unfortunately, 22.2.3 does not
	 * allow segment selectors with cpl > 0 or ti == 1.
	 */
	vmx->host_state.ldt_sel = FUNC1();
	vmx->host_state.gs_ldt_reload_needed = vmx->host_state.ldt_sel;
	FUNC5(fs, vmx->host_state.fs_sel);
	if (!(vmx->host_state.fs_sel & 7)) {
		FUNC8(HOST_FS_SELECTOR, vmx->host_state.fs_sel);
		vmx->host_state.fs_reload_needed = 0;
	} else {
		FUNC8(HOST_FS_SELECTOR, 0);
		vmx->host_state.fs_reload_needed = 1;
	}
	FUNC5(gs, vmx->host_state.gs_sel);
	if (!(vmx->host_state.gs_sel & 7))
		FUNC8(HOST_GS_SELECTOR, vmx->host_state.gs_sel);
	else {
		FUNC8(HOST_GS_SELECTOR, 0);
		vmx->host_state.gs_ldt_reload_needed = 1;
	}

#ifdef CONFIG_X86_64
	vmcs_writel(HOST_FS_BASE, read_msr(MSR_FS_BASE));
	vmcs_writel(HOST_GS_BASE, read_msr(MSR_GS_BASE));
#else
	FUNC9(HOST_FS_BASE, FUNC6(vmx->host_state.fs_sel));
	FUNC9(HOST_GS_BASE, FUNC6(vmx->host_state.gs_sel));
#endif

#ifdef CONFIG_X86_64
	if (is_long_mode(&vmx->vcpu)) {
		rdmsrl(MSR_KERNEL_GS_BASE, vmx->msr_host_kernel_gs_base);
		wrmsrl(MSR_KERNEL_GS_BASE, vmx->msr_guest_kernel_gs_base);
	}
#endif
	for (i = 0; i < vmx->save_nmsrs; ++i)
		FUNC2(vmx->guest_msrs[i].index,
				   vmx->guest_msrs[i].data,
				   vmx->guest_msrs[i].mask);
}