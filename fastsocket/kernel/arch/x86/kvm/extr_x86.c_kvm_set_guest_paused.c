
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pvclock_set_guest_stopped_request; int time; int pv_time_enabled; } ;
struct kvm_vcpu {int requests; TYPE_1__ arch; int kvm; } ;


 int EINVAL ;
 int KVM_REQ_CLOCK_UPDATE ;
 int PAGE_SHIFT ;
 int mark_page_dirty (int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int kvm_set_guest_paused(struct kvm_vcpu *vcpu)
{
 if (!vcpu->arch.pv_time_enabled)
  return -EINVAL;
 vcpu->arch.pvclock_set_guest_stopped_request = 1;
 mark_page_dirty(vcpu->kvm, vcpu->arch.time >> PAGE_SHIFT);
 set_bit(KVM_REQ_CLOCK_UPDATE, &vcpu->requests);
 return 0;
}
