#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_8__ {int pat; unsigned long cr4_guest_owned_bits; } ;
struct TYPE_9__ {TYPE_3__ arch; int /*<<< orphan*/  kvm; } ;
struct TYPE_6__ {int /*<<< orphan*/  guest; int /*<<< orphan*/  host; } ;
struct vcpu_vmx {scalar_t__ vpid; int nmsrs; TYPE_4__ vcpu; TYPE_2__* guest_msrs; TYPE_1__ msr_autoload; } ;
struct descriptor_table {unsigned long base; } ;
struct TYPE_10__ {int pin_based_exec_ctrl; int cpu_based_exec_ctrl; int cpu_based_2nd_exec_ctrl; int vmexit_ctrl; int vmentry_ctrl; } ;
struct TYPE_7__ {int index; unsigned long long mask; scalar_t__ data; } ;

/* Variables and functions */
 int CPU_BASED_CR3_LOAD_EXITING ; 
 int CPU_BASED_CR3_STORE_EXITING ; 
 int CPU_BASED_CR8_LOAD_EXITING ; 
 int CPU_BASED_CR8_STORE_EXITING ; 
 int CPU_BASED_INVLPG_EXITING ; 
 int CPU_BASED_TPR_SHADOW ; 
 int /*<<< orphan*/  CPU_BASED_VM_EXEC_CONTROL ; 
 int /*<<< orphan*/  CR0_GUEST_HOST_MASK ; 
 int /*<<< orphan*/  CR3_TARGET_COUNT ; 
 int /*<<< orphan*/  CR4_GUEST_HOST_MASK ; 
 int GDT_ENTRY_TSS ; 
 int /*<<< orphan*/  GUEST_IA32_PAT ; 
 int /*<<< orphan*/  HOST_CR0 ; 
 int /*<<< orphan*/  HOST_CR3 ; 
 int /*<<< orphan*/  HOST_CR4 ; 
 int /*<<< orphan*/  HOST_CS_SELECTOR ; 
 int /*<<< orphan*/  HOST_DS_SELECTOR ; 
 int /*<<< orphan*/  HOST_ES_SELECTOR ; 
 int /*<<< orphan*/  HOST_FS_BASE ; 
 int /*<<< orphan*/  HOST_FS_SELECTOR ; 
 int /*<<< orphan*/  HOST_GS_BASE ; 
 int /*<<< orphan*/  HOST_GS_SELECTOR ; 
 int /*<<< orphan*/  HOST_IA32_PAT ; 
 int /*<<< orphan*/  HOST_IA32_SYSENTER_CS ; 
 int /*<<< orphan*/  HOST_IA32_SYSENTER_EIP ; 
 int /*<<< orphan*/  HOST_IA32_SYSENTER_ESP ; 
 int /*<<< orphan*/  HOST_IDTR_BASE ; 
 int /*<<< orphan*/  HOST_RIP ; 
 int /*<<< orphan*/  HOST_SS_SELECTOR ; 
 int /*<<< orphan*/  HOST_TR_SELECTOR ; 
 int /*<<< orphan*/  IO_BITMAP_A ; 
 int /*<<< orphan*/  IO_BITMAP_B ; 
 unsigned long KVM_GUEST_CR4_MASK ; 
 int /*<<< orphan*/  MSR_BITMAP ; 
 int /*<<< orphan*/  MSR_FS_BASE ; 
 int /*<<< orphan*/  MSR_GS_BASE ; 
 int /*<<< orphan*/  MSR_IA32_CR_PAT ; 
 int /*<<< orphan*/  MSR_IA32_SYSENTER_CS ; 
 int /*<<< orphan*/  MSR_IA32_SYSENTER_EIP ; 
 int /*<<< orphan*/  MSR_IA32_SYSENTER_ESP ; 
 int NR_VMX_MSR ; 
 int /*<<< orphan*/  PAGE_FAULT_ERROR_CODE_MASK ; 
 int /*<<< orphan*/  PAGE_FAULT_ERROR_CODE_MATCH ; 
 int /*<<< orphan*/  PIN_BASED_VM_EXEC_CONTROL ; 
 int /*<<< orphan*/  PLE_GAP ; 
 int /*<<< orphan*/  PLE_WINDOW ; 
 int SECONDARY_EXEC_ENABLE_EPT ; 
 int SECONDARY_EXEC_ENABLE_INVPCID ; 
 int SECONDARY_EXEC_ENABLE_VPID ; 
 int SECONDARY_EXEC_PAUSE_LOOP_EXITING ; 
 int SECONDARY_EXEC_UNRESTRICTED_GUEST ; 
 int SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES ; 
 int /*<<< orphan*/  SECONDARY_VM_EXEC_CONTROL ; 
 int /*<<< orphan*/  VMCS_LINK_POINTER ; 
 int /*<<< orphan*/  VM_ENTRY_CONTROLS ; 
 int VM_ENTRY_LOAD_IA32_PAT ; 
 int /*<<< orphan*/  VM_ENTRY_MSR_LOAD_ADDR ; 
 int /*<<< orphan*/  VM_ENTRY_MSR_LOAD_COUNT ; 
 int /*<<< orphan*/  VM_EXIT_CONTROLS ; 
 int VM_EXIT_LOAD_IA32_PAT ; 
 int /*<<< orphan*/  VM_EXIT_MSR_LOAD_ADDR ; 
 int /*<<< orphan*/  VM_EXIT_MSR_LOAD_COUNT ; 
 int /*<<< orphan*/  VM_EXIT_MSR_STORE_COUNT ; 
 int __KERNEL_CS ; 
 int __KERNEL_DS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bypass_guest_pf ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  enable_ept ; 
 scalar_t__ enable_unrestricted_guest ; 
 int /*<<< orphan*/  FUNC3 (struct descriptor_table*) ; 
 int ple_gap ; 
 int ple_window ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC7 () ; 
 unsigned long FUNC8 () ; 
 unsigned long FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_5__ vmcs_config ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  vmx_io_bitmap_a ; 
 int /*<<< orphan*/  vmx_io_bitmap_b ; 
 int /*<<< orphan*/  vmx_msr_bitmap_legacy ; 
 int* vmx_msr_index ; 
 scalar_t__ FUNC16 (int,int,int) ; 

__attribute__((used)) static int FUNC17(struct vcpu_vmx *vmx)
{
	u32 host_sysenter_cs, msr_low, msr_high;
	u32 junk;
	u64 host_pat;
	unsigned long a;
	struct descriptor_table dt;
	int i;
	unsigned long kvm_vmx_return;
	u32 exec_control;

	/* I/O */
	FUNC14(IO_BITMAP_A, FUNC0(vmx_io_bitmap_a));
	FUNC14(IO_BITMAP_B, FUNC0(vmx_io_bitmap_b));

	if (FUNC2())
		FUNC14(MSR_BITMAP, FUNC0(vmx_msr_bitmap_legacy));

	FUNC14(VMCS_LINK_POINTER, -1ull); /* 22.3.1.5 */

	/* Control */
	FUNC13(PIN_BASED_VM_EXEC_CONTROL,
		vmcs_config.pin_based_exec_ctrl);

	exec_control = vmcs_config.cpu_based_exec_ctrl;
	if (!FUNC10(vmx->vcpu.kvm)) {
		exec_control &= ~CPU_BASED_TPR_SHADOW;
#ifdef CONFIG_X86_64
		exec_control |= CPU_BASED_CR8_STORE_EXITING |
				CPU_BASED_CR8_LOAD_EXITING;
#endif
	}
	if (!enable_ept)
		exec_control |= CPU_BASED_CR3_STORE_EXITING |
				CPU_BASED_CR3_LOAD_EXITING  |
				CPU_BASED_INVLPG_EXITING;
	FUNC13(CPU_BASED_VM_EXEC_CONTROL, exec_control);

	if (FUNC1()) {
		exec_control = vmcs_config.cpu_based_2nd_exec_ctrl;
		if (!FUNC11(vmx->vcpu.kvm))
			exec_control &=
				~SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES;
		if (vmx->vpid == 0)
			exec_control &= ~SECONDARY_EXEC_ENABLE_VPID;
		if (!enable_ept) {
			exec_control &= ~SECONDARY_EXEC_ENABLE_EPT;
			enable_unrestricted_guest = 0;
			/* Enable INVPCID for non-ept guests may cause performance regression. */
			exec_control &= ~SECONDARY_EXEC_ENABLE_INVPCID;
		}
		if (!enable_unrestricted_guest)
			exec_control &= ~SECONDARY_EXEC_UNRESTRICTED_GUEST;
		if (!ple_gap)
			exec_control &= ~SECONDARY_EXEC_PAUSE_LOOP_EXITING;
		FUNC13(SECONDARY_VM_EXEC_CONTROL, exec_control);
	}

	if (ple_gap) {
		FUNC13(PLE_GAP, ple_gap);
		FUNC13(PLE_WINDOW, ple_window);
	}

	FUNC13(PAGE_FAULT_ERROR_CODE_MASK, !!bypass_guest_pf);
	FUNC13(PAGE_FAULT_ERROR_CODE_MATCH, !!bypass_guest_pf);
	FUNC13(CR3_TARGET_COUNT, 0);           /* 22.2.1 */

	FUNC15(HOST_CR0, FUNC7());  /* 22.2.3 */
	FUNC15(HOST_CR4, FUNC9());  /* 22.2.3, 22.2.5 */
	FUNC15(HOST_CR3, FUNC8());  /* 22.2.3  FIXME: shadow tables */

	FUNC12(HOST_CS_SELECTOR, __KERNEL_CS);  /* 22.2.4 */
	FUNC12(HOST_DS_SELECTOR, __KERNEL_DS);  /* 22.2.4 */
	FUNC12(HOST_ES_SELECTOR, __KERNEL_DS);  /* 22.2.4 */
	FUNC12(HOST_FS_SELECTOR, 0);            /* 22.2.4 */
	FUNC12(HOST_GS_SELECTOR, 0);            /* 22.2.4 */
	FUNC12(HOST_SS_SELECTOR, __KERNEL_DS);  /* 22.2.4 */
#ifdef CONFIG_X86_64
	rdmsrl(MSR_FS_BASE, a);
	vmcs_writel(HOST_FS_BASE, a); /* 22.2.4 */
	rdmsrl(MSR_GS_BASE, a);
	vmcs_writel(HOST_GS_BASE, a); /* 22.2.4 */
#else
	FUNC15(HOST_FS_BASE, 0); /* 22.2.4 */
	FUNC15(HOST_GS_BASE, 0); /* 22.2.4 */
#endif

	FUNC12(HOST_TR_SELECTOR, GDT_ENTRY_TSS*8);  /* 22.2.4 */

	FUNC3(&dt);
	FUNC15(HOST_IDTR_BASE, dt.base);   /* 22.2.4 */

	asm("mov $.Lkvm_vmx_return, %0" : "=r"(kvm_vmx_return));
	FUNC15(HOST_RIP, kvm_vmx_return); /* 22.2.5 */
	FUNC13(VM_EXIT_MSR_STORE_COUNT, 0);
	FUNC13(VM_EXIT_MSR_LOAD_COUNT, 0);
	FUNC14(VM_EXIT_MSR_LOAD_ADDR, FUNC0(vmx->msr_autoload.host));
	FUNC13(VM_ENTRY_MSR_LOAD_COUNT, 0);
	FUNC14(VM_ENTRY_MSR_LOAD_ADDR, FUNC0(vmx->msr_autoload.guest));

	FUNC4(MSR_IA32_SYSENTER_CS, host_sysenter_cs, junk);
	FUNC13(HOST_IA32_SYSENTER_CS, host_sysenter_cs);
	FUNC6(MSR_IA32_SYSENTER_ESP, a);
	FUNC15(HOST_IA32_SYSENTER_ESP, a);   /* 22.2.3 */
	FUNC6(MSR_IA32_SYSENTER_EIP, a);
	FUNC15(HOST_IA32_SYSENTER_EIP, a);   /* 22.2.3 */

	if (vmcs_config.vmexit_ctrl & VM_EXIT_LOAD_IA32_PAT) {
		FUNC4(MSR_IA32_CR_PAT, msr_low, msr_high);
		host_pat = msr_low | ((u64) msr_high << 32);
		FUNC14(HOST_IA32_PAT, host_pat);
	}
	if (vmcs_config.vmentry_ctrl & VM_ENTRY_LOAD_IA32_PAT) {
		FUNC4(MSR_IA32_CR_PAT, msr_low, msr_high);
		host_pat = msr_low | ((u64) msr_high << 32);
		/* Write the default value follow host pat */
		FUNC14(GUEST_IA32_PAT, host_pat);
		/* Keep arch.pat sync with GUEST_IA32_PAT */
		vmx->vcpu.arch.pat = host_pat;
	}

	for (i = 0; i < NR_VMX_MSR; ++i) {
		u32 index = vmx_msr_index[i];
		u32 data_low, data_high;
		u64 data;
		int j = vmx->nmsrs;

		if (FUNC5(index, &data_low, &data_high) < 0)
			continue;
		if (FUNC16(index, data_low, data_high) < 0)
			continue;
		data = data_low | ((u64)data_high << 32);
		vmx->guest_msrs[j].index = i;
		vmx->guest_msrs[j].data = 0;
		vmx->guest_msrs[j].mask = -1ull;
		++vmx->nmsrs;
	}

	FUNC13(VM_EXIT_CONTROLS, vmcs_config.vmexit_ctrl);

	/* 22.2.1, 20.8.1 */
	FUNC13(VM_ENTRY_CONTROLS, vmcs_config.vmentry_ctrl);

	FUNC15(CR0_GUEST_HOST_MASK, ~0UL);
	FUNC15(CR4_GUEST_HOST_MASK, KVM_GUEST_CR4_MASK);
	vmx->vcpu.arch.cr4_guest_owned_bits = ~KVM_GUEST_CR4_MASK;

	return 0;
}