
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tlb_flush; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;
struct TYPE_4__ {int (* tlb_flush ) (struct kvm_vcpu*) ;} ;


 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;

void kvm_mmu_flush_tlb(struct kvm_vcpu *vcpu)
{
 ++vcpu->stat.tlb_flush;
 kvm_x86_ops->tlb_flush(vcpu);
}
