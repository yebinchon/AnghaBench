
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int invlpg; } ;
struct TYPE_4__ {int (* invlpg ) (struct kvm_vcpu*,int ) ;} ;
struct TYPE_5__ {TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_3__ stat; TYPE_2__ arch; } ;
typedef int gva_t ;


 int kvm_mmu_flush_tlb (struct kvm_vcpu*) ;
 int stub1 (struct kvm_vcpu*,int ) ;

void kvm_mmu_invlpg(struct kvm_vcpu *vcpu, gva_t gva)
{
 vcpu->arch.mmu.invlpg(vcpu, gva);
 kvm_mmu_flush_tlb(vcpu);
 ++vcpu->stat.invlpg;
}
