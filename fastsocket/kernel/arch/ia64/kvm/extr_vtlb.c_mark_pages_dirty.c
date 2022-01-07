
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int dirty_log_lock_pa; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int spinlock_t ;


 scalar_t__ KVM_MEM_DIRTY_LOG_BASE ;
 int PAGE_SHIFT ;
 int _PAGE_PPN_MASK ;
 int * __kvm_va (int ) ;
 int set_bit (int,void*) ;
 int test_bit (int,void*) ;
 int vmm_spin_lock (int *) ;
 int vmm_spin_unlock (int *) ;

void mark_pages_dirty(struct kvm_vcpu *v, u64 pte, u64 ps)
{
 u64 i, dirty_pages = 1;
 u64 base_gfn = (pte&_PAGE_PPN_MASK) >> PAGE_SHIFT;
 spinlock_t *lock = __kvm_va(v->arch.dirty_log_lock_pa);
 void *dirty_bitmap = (void *)KVM_MEM_DIRTY_LOG_BASE;

 dirty_pages <<= ps <= PAGE_SHIFT ? 0 : ps - PAGE_SHIFT;

 vmm_spin_lock(lock);
 for (i = 0; i < dirty_pages; i++) {

  if (!test_bit(base_gfn + i, dirty_bitmap))
   set_bit(base_gfn + i , dirty_bitmap);
 }
 vmm_spin_unlock(lock);
}
