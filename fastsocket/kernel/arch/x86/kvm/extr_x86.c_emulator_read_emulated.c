
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int mmio_phys_addr; int mmio_needed; unsigned int mmio_size; scalar_t__ mmio_is_write; scalar_t__ mmio_read_completed; int mmio_data; } ;
typedef int gpa_t ;


 int APIC_DEFAULT_PHYS_BASE ;
 int KVM_TRACE_MMIO_READ ;
 int KVM_TRACE_MMIO_READ_UNSATISFIED ;
 int PAGE_MASK ;
 int UNMAPPED_GVA ;
 int X86EMUL_CONTINUE ;
 int X86EMUL_PROPAGATE_FAULT ;
 int X86EMUL_UNHANDLEABLE ;
 int kvm_inject_page_fault (struct kvm_vcpu*,unsigned long,int ) ;
 int kvm_mmu_gva_to_gpa_read (struct kvm_vcpu*,unsigned long,int *) ;
 int kvm_read_guest_virt (unsigned long,void*,unsigned int,struct kvm_vcpu*,int *) ;
 int memcpy (void*,int ,unsigned int) ;
 int trace_kvm_mmio (int ,unsigned int,int,int ) ;
 int vcpu_mmio_read (struct kvm_vcpu*,int,unsigned int,void*) ;

__attribute__((used)) static int emulator_read_emulated(unsigned long addr,
      void *val,
      unsigned int bytes,
      struct kvm_vcpu *vcpu)
{
 gpa_t gpa;
 u32 error_code;

 if (vcpu->mmio_read_completed) {
  memcpy(val, vcpu->mmio_data, bytes);
  trace_kvm_mmio(KVM_TRACE_MMIO_READ, bytes,
          vcpu->mmio_phys_addr, *(u64 *)val);
  vcpu->mmio_read_completed = 0;
  return X86EMUL_CONTINUE;
 }

 gpa = kvm_mmu_gva_to_gpa_read(vcpu, addr, &error_code);

 if (gpa == UNMAPPED_GVA) {
  kvm_inject_page_fault(vcpu, addr, error_code);
  return X86EMUL_PROPAGATE_FAULT;
 }


 if ((gpa & PAGE_MASK) == APIC_DEFAULT_PHYS_BASE)
  goto mmio;

 if (kvm_read_guest_virt(addr, val, bytes, vcpu, ((void*)0))
    == X86EMUL_CONTINUE)
  return X86EMUL_CONTINUE;

mmio:



 if (!vcpu_mmio_read(vcpu, gpa, bytes, val)) {
  trace_kvm_mmio(KVM_TRACE_MMIO_READ, bytes, gpa, *(u64 *)val);
  return X86EMUL_CONTINUE;
 }

 trace_kvm_mmio(KVM_TRACE_MMIO_READ_UNSATISFIED, bytes, gpa, 0);

 vcpu->mmio_needed = 1;
 vcpu->mmio_phys_addr = gpa;
 vcpu->mmio_size = bytes;
 vcpu->mmio_is_write = 0;

 return X86EMUL_UNHANDLEABLE;
}
