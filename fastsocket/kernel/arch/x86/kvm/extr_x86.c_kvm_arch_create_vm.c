
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_mem_aliases {int dummy; } ;
struct TYPE_2__ {int tsc_write_lock; int irq_sources_bitmap; int assigned_dev_head; int active_mmu_pages; void* aliases; } ;
struct kvm {TYPE_1__ arch; } ;


 int ENOMEM ;
 struct kvm* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KVM_USERSPACE_IRQ_SOURCE_ID ;
 int kfree (struct kvm*) ;
 void* kzalloc (int,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;

struct kvm *kvm_arch_create_vm(void)
{
 struct kvm *kvm = kzalloc(sizeof(struct kvm), GFP_KERNEL);

 if (!kvm)
  return ERR_PTR(-ENOMEM);

 kvm->arch.aliases = kzalloc(sizeof(struct kvm_mem_aliases), GFP_KERNEL);
 if (!kvm->arch.aliases) {
  kfree(kvm);
  return ERR_PTR(-ENOMEM);
 }

 INIT_LIST_HEAD(&kvm->arch.active_mmu_pages);
 INIT_LIST_HEAD(&kvm->arch.assigned_dev_head);


 set_bit(KVM_USERSPACE_IRQ_SOURCE_ID, &kvm->arch.irq_sources_bitmap);

 spin_lock_init(&kvm->arch.tsc_write_lock);

 return kvm;
}
