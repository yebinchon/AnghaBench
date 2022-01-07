
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int nxe; } ;
struct TYPE_6__ {TYPE_1__ base_role; } ;
struct TYPE_7__ {int shadow_efer; TYPE_2__ mmu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct kvm_cpuid_entry2 {int edx; int ecx; } ;
struct TYPE_8__ {int (* set_efer ) (struct kvm_vcpu*,int) ;} ;


 int EFER_FFXSR ;
 int EFER_LMA ;
 int EFER_LME ;
 int EFER_NX ;
 int EFER_SVME ;
 int X86_FEATURE_FXSR_OPT ;
 int X86_FEATURE_SVM ;
 int bit (int ) ;
 int efer_reserved_bits ;
 scalar_t__ is_paging (struct kvm_vcpu*) ;
 struct kvm_cpuid_entry2* kvm_find_cpuid_entry (struct kvm_vcpu*,int,int ) ;
 int kvm_mmu_reset_context (struct kvm_vcpu*) ;
 TYPE_4__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int) ;
 int tdp_enabled ;

__attribute__((used)) static int set_efer(struct kvm_vcpu *vcpu, u64 efer)
{
 if (efer & efer_reserved_bits)
  return 1;

 if (is_paging(vcpu)
     && (vcpu->arch.shadow_efer & EFER_LME) != (efer & EFER_LME))
  return 1;

 if (efer & EFER_FFXSR) {
  struct kvm_cpuid_entry2 *feat;

  feat = kvm_find_cpuid_entry(vcpu, 0x80000001, 0);
  if (!feat || !(feat->edx & bit(X86_FEATURE_FXSR_OPT)))
   return 1;
 }

 if (efer & EFER_SVME) {
  struct kvm_cpuid_entry2 *feat;

  feat = kvm_find_cpuid_entry(vcpu, 0x80000001, 0);
  if (!feat || !(feat->ecx & bit(X86_FEATURE_SVM)))
   return 1;
 }

 efer &= ~EFER_LMA;
 efer |= vcpu->arch.shadow_efer & EFER_LMA;

 kvm_x86_ops->set_efer(vcpu, efer);

 vcpu->arch.shadow_efer = efer;

 vcpu->arch.mmu.base_role.nxe = (efer & EFER_NX) && !tdp_enabled;
 kvm_mmu_reset_context(vcpu);

 return 0;
}
