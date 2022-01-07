
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;


typedef int u64 ;
struct TYPE_23__ {int sipi_vector; int cr0; TYPE_3__* apic; int * regs; } ;
struct TYPE_25__ {TYPE_5__ arch; TYPE_11__* kvm; } ;
struct TYPE_20__ {scalar_t__ vm86_active; } ;
struct vcpu_vmx {int vpid; scalar_t__ emulation_required; TYPE_7__ vcpu; scalar_t__ soft_vnmi_blocked; TYPE_2__ rmode; } ;
struct TYPE_19__ {int regs_avail; } ;
struct kvm_vcpu {int srcu_idx; TYPE_6__* kvm; TYPE_1__ arch; } ;
struct TYPE_24__ {int srcu; } ;
struct TYPE_22__ {int apic_access_page; } ;
struct TYPE_21__ {int regs_page; } ;
struct TYPE_18__ {TYPE_4__ arch; } ;


 int APIC_ACCESS_ADDR ;
 int GUEST_ACTIVITY_ACTIVE ;
 int GUEST_ACTIVITY_STATE ;
 int GUEST_CS_BASE ;
 int GUEST_CS_SELECTOR ;
 int GUEST_DR7 ;
 int GUEST_GDTR_BASE ;
 int GUEST_GDTR_LIMIT ;
 int GUEST_IA32_DEBUGCTL ;
 int GUEST_IDTR_BASE ;
 int GUEST_IDTR_LIMIT ;
 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_LDTR_AR_BYTES ;
 int GUEST_LDTR_BASE ;
 int GUEST_LDTR_LIMIT ;
 int GUEST_LDTR_SELECTOR ;
 int GUEST_PENDING_DBG_EXCEPTIONS ;
 int GUEST_RFLAGS ;
 int GUEST_SYSENTER_CS ;
 int GUEST_SYSENTER_EIP ;
 int GUEST_SYSENTER_ESP ;
 int GUEST_TR_AR_BYTES ;
 int GUEST_TR_BASE ;
 int GUEST_TR_LIMIT ;
 int GUEST_TR_SELECTOR ;
 int MSR_IA32_APICBASE_BSP ;
 int MSR_IA32_APICBASE_ENABLE ;
 int TPR_THRESHOLD ;
 size_t VCPU_REGS_RDX ;
 int VCPU_REGS_RIP ;
 int VCPU_REGS_RSP ;
 int VCPU_SREG_CS ;
 int VCPU_SREG_DS ;
 int VCPU_SREG_ES ;
 int VCPU_SREG_FS ;
 int VCPU_SREG_GS ;
 int VCPU_SREG_SS ;
 int VIRTUAL_APIC_PAGE_ADDR ;
 int VIRTUAL_PROCESSOR_ID ;
 int VM_ENTRY_INTR_INFO_FIELD ;
 int X86_CR0_CD ;
 int X86_CR0_ET ;
 int X86_CR0_NW ;
 scalar_t__ cpu_has_vmx_tpr_shadow () ;
 int fx_init (TYPE_7__*) ;
 int get_rdx_init_val () ;
 int kvm_read_cr0 (struct kvm_vcpu*) ;
 int kvm_register_write (struct kvm_vcpu*,int,int ) ;
 int kvm_rip_write (struct kvm_vcpu*,int) ;
 int kvm_set_apic_base (TYPE_7__*,int) ;
 int kvm_set_cr8 (TYPE_7__*,int ) ;
 scalar_t__ kvm_vcpu_is_bsp (TYPE_7__*) ;
 int page_to_phys (int ) ;
 int seg_setup (int ) ;
 int setup_msrs (struct vcpu_vmx*) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int ) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int update_exception_bitmap (TYPE_7__*) ;
 scalar_t__ vm_need_tpr_shadow (TYPE_11__*) ;
 scalar_t__ vm_need_virtualize_apic_accesses (TYPE_11__*) ;
 int vmcs_write16 (int ,int) ;
 int vmcs_write32 (int ,int) ;
 int vmcs_write64 (int ,int ) ;
 int vmcs_writel (int ,int) ;
 int vmx_fpu_activate (TYPE_7__*) ;
 int vmx_set_cr0 (TYPE_7__*,int ) ;
 int vmx_set_cr4 (TYPE_7__*,int ) ;
 int vmx_set_efer (TYPE_7__*,int ) ;
 int vpid_sync_vcpu_all (struct vcpu_vmx*) ;

__attribute__((used)) static int vmx_vcpu_reset(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 u64 msr;
 int ret;

 vcpu->arch.regs_avail = ~((1 << VCPU_REGS_RIP) | (1 << VCPU_REGS_RSP));

 vmx->rmode.vm86_active = 0;

 vmx->soft_vnmi_blocked = 0;

 vmx->vcpu.arch.regs[VCPU_REGS_RDX] = get_rdx_init_val();
 kvm_set_cr8(&vmx->vcpu, 0);
 msr = 0xfee00000 | MSR_IA32_APICBASE_ENABLE;
 if (kvm_vcpu_is_bsp(&vmx->vcpu))
  msr |= MSR_IA32_APICBASE_BSP;
 kvm_set_apic_base(&vmx->vcpu, msr);

 fx_init(&vmx->vcpu);

 seg_setup(VCPU_SREG_CS);




 if (kvm_vcpu_is_bsp(&vmx->vcpu)) {
  vmcs_write16(GUEST_CS_SELECTOR, 0xf000);
  vmcs_writel(GUEST_CS_BASE, 0x000f0000);
 } else {
  vmcs_write16(GUEST_CS_SELECTOR, vmx->vcpu.arch.sipi_vector << 8);
  vmcs_writel(GUEST_CS_BASE, vmx->vcpu.arch.sipi_vector << 12);
 }

 seg_setup(VCPU_SREG_DS);
 seg_setup(VCPU_SREG_ES);
 seg_setup(VCPU_SREG_FS);
 seg_setup(VCPU_SREG_GS);
 seg_setup(VCPU_SREG_SS);

 vmcs_write16(GUEST_TR_SELECTOR, 0);
 vmcs_writel(GUEST_TR_BASE, 0);
 vmcs_write32(GUEST_TR_LIMIT, 0xffff);
 vmcs_write32(GUEST_TR_AR_BYTES, 0x008b);

 vmcs_write16(GUEST_LDTR_SELECTOR, 0);
 vmcs_writel(GUEST_LDTR_BASE, 0);
 vmcs_write32(GUEST_LDTR_LIMIT, 0xffff);
 vmcs_write32(GUEST_LDTR_AR_BYTES, 0x00082);

 vmcs_write32(GUEST_SYSENTER_CS, 0);
 vmcs_writel(GUEST_SYSENTER_ESP, 0);
 vmcs_writel(GUEST_SYSENTER_EIP, 0);

 vmcs_writel(GUEST_RFLAGS, 0x02);
 if (kvm_vcpu_is_bsp(&vmx->vcpu))
  kvm_rip_write(vcpu, 0xfff0);
 else
  kvm_rip_write(vcpu, 0);
 kvm_register_write(vcpu, VCPU_REGS_RSP, 0);

 vmcs_writel(GUEST_DR7, 0x400);

 vmcs_writel(GUEST_GDTR_BASE, 0);
 vmcs_write32(GUEST_GDTR_LIMIT, 0xffff);

 vmcs_writel(GUEST_IDTR_BASE, 0);
 vmcs_write32(GUEST_IDTR_LIMIT, 0xffff);

 vmcs_write32(GUEST_ACTIVITY_STATE, GUEST_ACTIVITY_ACTIVE);
 vmcs_write32(GUEST_INTERRUPTIBILITY_INFO, 0);
 vmcs_write32(GUEST_PENDING_DBG_EXCEPTIONS, 0);


 vmcs_write64(GUEST_IA32_DEBUGCTL, 0);

 setup_msrs(vmx);

 vmcs_write32(VM_ENTRY_INTR_INFO_FIELD, 0);

 if (cpu_has_vmx_tpr_shadow()) {
  vmcs_write64(VIRTUAL_APIC_PAGE_ADDR, 0);
  if (vm_need_tpr_shadow(vmx->vcpu.kvm))
   vmcs_write64(VIRTUAL_APIC_PAGE_ADDR,
    page_to_phys(vmx->vcpu.arch.apic->regs_page));
  vmcs_write32(TPR_THRESHOLD, 0);
 }

 if (vm_need_virtualize_apic_accesses(vmx->vcpu.kvm))
  vmcs_write64(APIC_ACCESS_ADDR,
        page_to_phys(vmx->vcpu.kvm->arch.apic_access_page));

 if (vmx->vpid != 0)
  vmcs_write16(VIRTUAL_PROCESSOR_ID, vmx->vpid);

 vmx->vcpu.arch.cr0 = X86_CR0_NW | X86_CR0_CD | X86_CR0_ET;
 vcpu->srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
 vmx_set_cr0(&vmx->vcpu, kvm_read_cr0(vcpu));
 srcu_read_unlock(&vcpu->kvm->srcu, vcpu->srcu_idx);
 vmx_set_cr4(&vmx->vcpu, 0);
 vmx_set_efer(&vmx->vcpu, 0);
 vmx_fpu_activate(&vmx->vcpu);
 update_exception_bitmap(&vmx->vcpu);

 vpid_sync_vcpu_all(vmx);

 ret = 0;


 vmx->emulation_required = 0;

 return ret;
}
