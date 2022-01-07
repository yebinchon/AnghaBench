
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int IA64_PAGE_NOT_PRESENT_VECTOR ;
 int inject_guest_interruption (struct kvm_vcpu*,int ) ;
 int set_ifa_itir_iha (struct kvm_vcpu*,int ,int,int,int ) ;

__attribute__((used)) static void __page_not_present(struct kvm_vcpu *vcpu, u64 vadr)
{

 set_ifa_itir_iha(vcpu, vadr, 1, 1, 0);
 inject_guest_interruption(vcpu, IA64_PAGE_NOT_PRESENT_VECTOR);
}
