
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memslots {struct kvm_memory_slot* memslots; int generation; } ;
struct kvm_memory_slot {unsigned long* dirty_bitmap; } ;
struct kvm_dirty_log {size_t slot; int dirty_bitmap; } ;
struct kvm {int slots_lock; int mmu_lock; int srcu; struct kvm_memslots* memslots; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t KVM_MEMORY_SLOTS ;
 scalar_t__ copy_to_user (int ,unsigned long*,unsigned long) ;
 int kfree (struct kvm_memslots*) ;
 unsigned long kvm_dirty_bitmap_bytes (struct kvm_memory_slot*) ;
 int kvm_mmu_slot_remove_write_access (struct kvm*,size_t,int) ;
 struct kvm_memslots* kzalloc (int,int ) ;
 int memcpy (struct kvm_memslots*,struct kvm_memslots*,int) ;
 int memset (unsigned long*,int ,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (struct kvm_memslots*,struct kvm_memslots*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_srcu_expedited (int *) ;
 int vfree (unsigned long*) ;
 unsigned long* vmalloc (unsigned long) ;

int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm,
          struct kvm_dirty_log *log)
{
 int r, i;
 struct kvm_memory_slot *memslot;
 unsigned long n;
 unsigned long is_dirty = 0;
 unsigned long *dirty_bitmap = ((void*)0);

 mutex_lock(&kvm->slots_lock);

 r = -EINVAL;
 if (log->slot >= KVM_MEMORY_SLOTS)
  goto out;

 memslot = &kvm->memslots->memslots[log->slot];
 r = -ENOENT;
 if (!memslot->dirty_bitmap)
  goto out;

 n = kvm_dirty_bitmap_bytes(memslot);

 r = -ENOMEM;
 dirty_bitmap = vmalloc(n);
 if (!dirty_bitmap)
  goto out;
 memset(dirty_bitmap, 0, n);

 for (i = 0; !is_dirty && i < n/sizeof(long); i++)
  is_dirty = memslot->dirty_bitmap[i];


 if (is_dirty) {
  struct kvm_memslots *slots, *old_slots;

  slots = kzalloc(sizeof(struct kvm_memslots), GFP_KERNEL);
  if (!slots)
   goto out_free;

  memcpy(slots, kvm->memslots, sizeof(struct kvm_memslots));
  slots->memslots[log->slot].dirty_bitmap = dirty_bitmap;
  slots->generation++;

  old_slots = kvm->memslots;
  rcu_assign_pointer(kvm->memslots, slots);
  synchronize_srcu_expedited(&kvm->srcu);
  dirty_bitmap = old_slots->memslots[log->slot].dirty_bitmap;
  kfree(old_slots);

  spin_lock(&kvm->mmu_lock);
  kvm_mmu_slot_remove_write_access(kvm, log->slot, 0);
  spin_unlock(&kvm->mmu_lock);
 }

 r = 0;
 if (copy_to_user(log->dirty_bitmap, dirty_bitmap, n))
  r = -EFAULT;
out_free:
 vfree(dirty_bitmap);
out:
 mutex_unlock(&kvm->slots_lock);
 return r;
}
