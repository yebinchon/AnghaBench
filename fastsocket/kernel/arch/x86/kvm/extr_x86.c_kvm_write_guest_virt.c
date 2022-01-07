
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int kvm; } ;
typedef int gva_t ;
typedef scalar_t__ gpa_t ;


 int PAGE_SIZE ;
 scalar_t__ UNMAPPED_GVA ;
 int X86EMUL_CONTINUE ;
 int X86EMUL_PROPAGATE_FAULT ;
 int X86EMUL_UNHANDLEABLE ;
 scalar_t__ kvm_mmu_gva_to_gpa_write (struct kvm_vcpu*,int,int *) ;
 int kvm_write_guest (int ,scalar_t__,void*,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static int kvm_write_guest_virt(gva_t addr, void *val, unsigned int bytes,
    struct kvm_vcpu *vcpu, u32 *error)
{
 void *data = val;
 int r = X86EMUL_CONTINUE;

 while (bytes) {
  gpa_t gpa = kvm_mmu_gva_to_gpa_write(vcpu, addr, error);
  unsigned offset = addr & (PAGE_SIZE-1);
  unsigned towrite = min(bytes, (unsigned)PAGE_SIZE - offset);
  int ret;

  if (gpa == UNMAPPED_GVA) {
   r = X86EMUL_PROPAGATE_FAULT;
   goto out;
  }
  ret = kvm_write_guest(vcpu->kvm, gpa, data, towrite);
  if (ret < 0) {
   r = X86EMUL_UNHANDLEABLE;
   goto out;
  }

  bytes -= towrite;
  data += towrite;
  addr += towrite;
 }
out:
 return r;
}
