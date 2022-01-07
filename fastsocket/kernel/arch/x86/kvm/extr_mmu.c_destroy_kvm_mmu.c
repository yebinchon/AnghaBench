
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int root_hpa; int (* free ) (struct kvm_vcpu*) ;} ;
struct TYPE_4__ {TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int ASSERT (struct kvm_vcpu*) ;
 int INVALID_PAGE ;
 scalar_t__ VALID_PAGE (int ) ;
 int stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static void destroy_kvm_mmu(struct kvm_vcpu *vcpu)
{
 ASSERT(vcpu);
 if (VALID_PAGE(vcpu->arch.mmu.root_hpa)) {
  vcpu->arch.mmu.free(vcpu);
  vcpu->arch.mmu.root_hpa = INVALID_PAGE;
 }
}
