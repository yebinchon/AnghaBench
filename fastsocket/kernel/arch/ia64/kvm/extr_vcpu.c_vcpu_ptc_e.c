
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int thash_purge_all (struct kvm_vcpu*) ;

void vcpu_ptc_e(struct kvm_vcpu *vcpu, u64 va)
{
 thash_purge_all(vcpu);
}
