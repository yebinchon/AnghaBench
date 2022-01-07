
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ptc_g_count; int * ptc_g_data; } ;
struct kvm_vcpu {int requests; TYPE_1__ arch; } ;
struct call_data {int ptc_g_data; struct kvm_vcpu* vcpu; } ;


 int KVM_REQ_PTC_G ;
 int KVM_REQ_TLB_FLUSH ;
 scalar_t__ MAX_PTC_G_NUM ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void vcpu_global_purge(void *info)
{
 struct call_data *p = (struct call_data *)info;
 struct kvm_vcpu *vcpu = p->vcpu;

 if (test_bit(KVM_REQ_TLB_FLUSH, &vcpu->requests))
  return;

 set_bit(KVM_REQ_PTC_G, &vcpu->requests);
 if (vcpu->arch.ptc_g_count < MAX_PTC_G_NUM) {
  vcpu->arch.ptc_g_data[vcpu->arch.ptc_g_count++] =
       p->ptc_g_data;
 } else {
  clear_bit(KVM_REQ_PTC_G, &vcpu->requests);
  vcpu->arch.ptc_g_count = 0;
  set_bit(KVM_REQ_TLB_FLUSH, &vcpu->requests);
 }
}
