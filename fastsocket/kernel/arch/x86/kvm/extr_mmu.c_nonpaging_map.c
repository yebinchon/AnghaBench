
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {TYPE_1__* kvm; } ;
typedef int pfn_t ;
typedef int gva_t ;
typedef int gfn_t ;
struct TYPE_3__ {unsigned long mmu_notifier_seq; int mmu_lock; } ;


 int KVM_PAGES_PER_HPAGE (int) ;
 int PT_DIRECTORY_LEVEL ;
 int __direct_map (struct kvm_vcpu*,int ,int,int,int,int ) ;
 int gfn_to_pfn (TYPE_1__*,int) ;
 scalar_t__ is_error_pfn (int ) ;
 int kvm_handle_bad_page (TYPE_1__*,int,int ) ;
 int kvm_mmu_free_some_pages (struct kvm_vcpu*) ;
 int kvm_release_pfn_clean (int ) ;
 int mapping_level (struct kvm_vcpu*,int) ;
 scalar_t__ mmu_notifier_retry (struct kvm_vcpu*,unsigned long) ;
 int smp_rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nonpaging_map(struct kvm_vcpu *vcpu, gva_t v, int write, gfn_t gfn)
{
 int r;
 int level;
 pfn_t pfn;
 unsigned long mmu_seq;

 mmu_seq = vcpu->kvm->mmu_notifier_seq;
 smp_rmb();
 level = mapping_level(vcpu, gfn);





 if (level > PT_DIRECTORY_LEVEL)
  level = PT_DIRECTORY_LEVEL;

 gfn &= ~(KVM_PAGES_PER_HPAGE(level) - 1);

 pfn = gfn_to_pfn(vcpu->kvm, gfn);


 if (is_error_pfn(pfn))
  return kvm_handle_bad_page(vcpu->kvm, gfn, pfn);

 spin_lock(&vcpu->kvm->mmu_lock);
 if (mmu_notifier_retry(vcpu, mmu_seq))
  goto out_unlock;
 kvm_mmu_free_some_pages(vcpu);
 r = __direct_map(vcpu, v, write, level, gfn, pfn);
 spin_unlock(&vcpu->kvm->mmu_lock);


 return r;

out_unlock:
 spin_unlock(&vcpu->kvm->mmu_lock);
 kvm_release_pfn_clean(pfn);
 return 0;
}
