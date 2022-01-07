
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ptc_g_count; } ;
struct kvm_vcpu {TYPE_1__ arch; int requests; } ;


 int KVM_REQ_PTC_G ;
 int KVM_REQ_RESUME ;
 int KVM_REQ_TLB_FLUSH ;
 int ptc_ga_remote_func (struct kvm_vcpu*,scalar_t__) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int thash_purge_all (struct kvm_vcpu*) ;
 scalar_t__ unlikely (scalar_t__) ;
 int vcpu_do_resume (struct kvm_vcpu*) ;
 int vmm_sanity_check (struct kvm_vcpu*) ;

__attribute__((used)) static void kvm_do_resume_op(struct kvm_vcpu *vcpu)
{
 vmm_sanity_check(vcpu);

 if (test_and_clear_bit(KVM_REQ_RESUME, &vcpu->requests)) {
  vcpu_do_resume(vcpu);
  return;
 }

 if (unlikely(test_and_clear_bit(KVM_REQ_TLB_FLUSH, &vcpu->requests))) {
  thash_purge_all(vcpu);
  return;
 }

 if (test_and_clear_bit(KVM_REQ_PTC_G, &vcpu->requests)) {
  while (vcpu->arch.ptc_g_count > 0)
   ptc_ga_remote_func(vcpu, --vcpu->arch.ptc_g_count);
 }
}
