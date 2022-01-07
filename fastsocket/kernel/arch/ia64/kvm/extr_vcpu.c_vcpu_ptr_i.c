
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {TYPE_1__* itrs; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {scalar_t__ page_flags; } ;


 int I_TLB ;
 int PAGEALIGN (int ,int ) ;
 int thash_purge_entries (struct kvm_vcpu*,int ,int ) ;
 int vtr_find_overlap (struct kvm_vcpu*,int ,int ,int ) ;

void vcpu_ptr_i(struct kvm_vcpu *vcpu, u64 ifa, u64 ps)
{
 int index;
 u64 va;

 va = PAGEALIGN(ifa, ps);
 while ((index = vtr_find_overlap(vcpu, va, ps, I_TLB)) >= 0)
  vcpu->arch.itrs[index].page_flags = 0;

 thash_purge_entries(vcpu, va, ps);
}
