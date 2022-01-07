
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ root_hpa; } ;
struct TYPE_4__ {TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 scalar_t__ INVALID_PAGE ;
 int kvm_mmu_load (struct kvm_vcpu*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline int kvm_mmu_reload(struct kvm_vcpu *vcpu)
{
 if (likely(vcpu->arch.mmu.root_hpa != INVALID_PAGE))
  return 0;

 return kvm_mmu_load(vcpu);
}
