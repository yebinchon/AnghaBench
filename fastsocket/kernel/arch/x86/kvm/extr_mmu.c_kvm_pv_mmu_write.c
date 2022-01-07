
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;


 int EFAULT ;
 int emulator_write_phys (struct kvm_vcpu*,int ,int *,int) ;
 int is_long_mode (struct kvm_vcpu*) ;
 int is_pae (struct kvm_vcpu*) ;
 int mmu_topup_memory_caches (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_pv_mmu_write(struct kvm_vcpu *vcpu,
        gpa_t addr, gpa_t value)
{
 int bytes = 8;
 int r;

 if (!is_long_mode(vcpu) && !is_pae(vcpu))
  bytes = 4;

 r = mmu_topup_memory_caches(vcpu);
 if (r)
  return r;

 if (!emulator_write_phys(vcpu, addr, &value, bytes))
  return -EFAULT;

 return 1;
}
