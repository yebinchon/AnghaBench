
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int root_hpa; } ;
struct TYPE_7__ {TYPE_2__ mmu; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_1__* kvm; } ;
struct TYPE_8__ {int (* set_cr3 ) (struct kvm_vcpu*,int ) ;} ;
struct TYPE_5__ {int mmu_lock; } ;


 TYPE_4__* kvm_x86_ops ;
 int mmu_alloc_roots (struct kvm_vcpu*) ;
 int mmu_sync_roots (struct kvm_vcpu*) ;
 int mmu_topup_memory_caches (struct kvm_vcpu*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct kvm_vcpu*,int ) ;

int kvm_mmu_load(struct kvm_vcpu *vcpu)
{
 int r;

 r = mmu_topup_memory_caches(vcpu);
 if (r)
  goto out;
 r = mmu_alloc_roots(vcpu);
 spin_lock(&vcpu->kvm->mmu_lock);
 mmu_sync_roots(vcpu);
 spin_unlock(&vcpu->kvm->mmu_lock);
 if (r)
  goto out;

 kvm_x86_ops->set_cr3(vcpu, vcpu->arch.mmu.root_hpa);
out:
 return r;
}
