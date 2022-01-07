
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int I_TLB ;
 int thash_purge_and_insert (struct kvm_vcpu*,int ,int ,int ,int ) ;

void vcpu_itc_i(struct kvm_vcpu *vcpu, u64 pte, u64 itir, u64 ifa)
{
 thash_purge_and_insert(vcpu, pte, itir, ifa, I_TLB);
}
