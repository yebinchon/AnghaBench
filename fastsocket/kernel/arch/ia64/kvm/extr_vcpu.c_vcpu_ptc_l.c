
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int PAGEALIGN (int ,int ) ;
 int thash_purge_entries (struct kvm_vcpu*,int ,int ) ;

void vcpu_ptc_l(struct kvm_vcpu *vcpu, u64 va, u64 ps)
{
 va = PAGEALIGN(va, ps);
 thash_purge_entries(vcpu, va, ps);
}
