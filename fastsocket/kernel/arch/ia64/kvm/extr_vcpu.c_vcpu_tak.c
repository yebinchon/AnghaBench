
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ia64_pta {scalar_t__ vf; int val; } ;
typedef int u64 ;
struct thash_data {int key; int p; } ;
struct kvm_vcpu {int dummy; } ;


 int D_TLB ;
 int vcpu_get_pta (struct kvm_vcpu*) ;
 struct thash_data* vtlb_lookup (struct kvm_vcpu*,int,int ) ;

u64 vcpu_tak(struct kvm_vcpu *vcpu, u64 vadr)
{
 struct thash_data *data;
 union ia64_pta vpta;
 u64 key;

 vpta.val = vcpu_get_pta(vcpu);
 if (vpta.vf == 0) {
  key = 1;
  return key;
 }
 data = vtlb_lookup(vcpu, vadr, D_TLB);
 if (!data || !data->p)
  key = 1;
 else
  key = data->key;

 return key;
}
