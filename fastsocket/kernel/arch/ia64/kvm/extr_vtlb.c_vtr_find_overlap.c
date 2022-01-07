
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct thash_data {int dummy; } ;
struct TYPE_2__ {int itrs; int itr_regions; int dtrs; int dtr_regions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int D_TLB ;
 int NDTRS ;
 int NITRS ;
 int PSIZE (int) ;
 int RR_RID_MASK ;
 scalar_t__ __is_tr_overlap (struct thash_data*,int,int,int) ;
 int vcpu_get_rr (struct kvm_vcpu*,int) ;
 scalar_t__ vcpu_quick_region_check (int ,int) ;

int vtr_find_overlap(struct kvm_vcpu *vcpu, u64 va, u64 ps, int type)
{
 struct thash_data *trp;
 int i;
 u64 end, rid;

 rid = vcpu_get_rr(vcpu, va);
 rid = rid & RR_RID_MASK;
 end = va + PSIZE(ps);
 if (type == D_TLB) {
  if (vcpu_quick_region_check(vcpu->arch.dtr_regions, va)) {
   for (trp = (struct thash_data *)&vcpu->arch.dtrs, i = 0;
     i < NDTRS; i++, trp++) {
    if (__is_tr_overlap(trp, rid, va, end))
     return i;
   }
  }
 } else {
  if (vcpu_quick_region_check(vcpu->arch.itr_regions, va)) {
   for (trp = (struct thash_data *)&vcpu->arch.itrs, i = 0;
     i < NITRS; i++, trp++) {
    if (__is_tr_overlap(trp, rid, va, end))
     return i;
   }
  }
 }
 return -1;
}
