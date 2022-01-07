
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u64 ;
struct thash_data {int dummy; } ;
struct TYPE_2__ {int * itrs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 size_t PAGEALIGN (size_t,size_t) ;
 size_t PAGE_FLAGS_RV_MASK ;
 size_t RR_RID_MASK ;
 int VMX (struct kvm_vcpu*,int ) ;
 size_t itir_ps (size_t) ;
 int itr_regions ;
 size_t vcpu_get_rr (struct kvm_vcpu*,size_t) ;
 int vcpu_quick_region_set (int ,size_t) ;
 int vcpu_set_tr (struct thash_data*,size_t,size_t,size_t,size_t) ;

void vcpu_itr_i(struct kvm_vcpu *vcpu, u64 slot, u64 pte, u64 itir, u64 ifa)
{
 u64 ps, va, rid;
 struct thash_data *p_itr;

 ps = itir_ps(itir);
 va = PAGEALIGN(ifa, ps);
 pte &= ~PAGE_FLAGS_RV_MASK;
 rid = vcpu_get_rr(vcpu, ifa);
 rid = rid & RR_RID_MASK;
 p_itr = (struct thash_data *)&vcpu->arch.itrs[slot];
 vcpu_set_tr(p_itr, pte, itir, va, rid);
 vcpu_quick_region_set(VMX(vcpu, itr_regions), va);
}
