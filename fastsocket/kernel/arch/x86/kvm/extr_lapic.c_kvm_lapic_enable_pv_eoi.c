
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int msr_val; int data; } ;
struct TYPE_4__ {TYPE_1__ pv_eoi; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;


 int IS_ALIGNED (int,int) ;
 int KVM_MSR_ENABLED ;
 int kvm_gfn_to_hva_cache_init (int ,int *,int) ;
 int pv_eoi_enabled (struct kvm_vcpu*) ;

int kvm_lapic_enable_pv_eoi(struct kvm_vcpu *vcpu, u64 data)
{
 u64 addr = data & ~KVM_MSR_ENABLED;
 if (!IS_ALIGNED(addr, 4))
  return 1;

 vcpu->arch.pv_eoi.msr_val = data;
 if (!pv_eoi_enabled(vcpu))
  return 0;
 return kvm_gfn_to_hva_cache_init(vcpu->kvm, &vcpu->arch.pv_eoi.data,
      addr);
}
