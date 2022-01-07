
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int DATA ;
 int _nat_consumption_fault (struct kvm_vcpu*,int ,int ) ;

void dnat_page_consumption(struct kvm_vcpu *vcpu, u64 vadr)
{
 _nat_consumption_fault(vcpu, vadr, DATA);
}
