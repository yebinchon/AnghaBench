
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int kvm_inject_page_fault (struct kvm_vcpu*,int ,int ) ;

__attribute__((used)) static void inject_page_fault(struct kvm_vcpu *vcpu,
         u64 addr,
         u32 err_code)
{
 kvm_inject_page_fault(vcpu, addr, err_code);
}
