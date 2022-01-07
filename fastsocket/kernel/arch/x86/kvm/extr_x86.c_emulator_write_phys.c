
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;
typedef int gpa_t ;


 int kvm_mmu_pte_write (struct kvm_vcpu*,int ,void const*,int,int) ;
 int kvm_write_guest (int ,int ,void const*,int) ;

int emulator_write_phys(struct kvm_vcpu *vcpu, gpa_t gpa,
     const void *val, int bytes)
{
 int ret;

 ret = kvm_write_guest(vcpu->kvm, gpa, val, bytes);
 if (ret < 0)
  return 0;
 kvm_mmu_pte_write(vcpu, gpa, val, bytes, 1);
 return 1;
}
