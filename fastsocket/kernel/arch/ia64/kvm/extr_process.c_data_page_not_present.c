
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int __page_not_present (struct kvm_vcpu*,int ) ;

void data_page_not_present(struct kvm_vcpu *vcpu, u64 vadr)
{
 __page_not_present(vcpu, vadr);
}
