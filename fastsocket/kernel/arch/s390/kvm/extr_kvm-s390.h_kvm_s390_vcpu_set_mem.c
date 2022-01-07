
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_2__ arch; } ;
struct kvm_memslots {struct kvm_memory_slot* memslots; } ;
struct kvm_memory_slot {int npages; scalar_t__ userspace_addr; } ;
struct TYPE_6__ {int srcu; int memslots; } ;
struct TYPE_4__ {scalar_t__ gmslm; scalar_t__ gmsor; } ;


 int PAGE_SHIFT ;
 scalar_t__ VIRTIODESCSPACE ;
 struct kvm_memslots* rcu_dereference (int ) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

__attribute__((used)) static inline void kvm_s390_vcpu_set_mem(struct kvm_vcpu *vcpu)
{
 int idx;
 struct kvm_memory_slot *mem;
 struct kvm_memslots *memslots;

 idx = srcu_read_lock(&vcpu->kvm->srcu);
 memslots = rcu_dereference(vcpu->kvm->memslots);

 mem = &memslots->memslots[0];

 vcpu->arch.sie_block->gmsor = mem->userspace_addr;
 vcpu->arch.sie_block->gmslm =
  mem->userspace_addr +
  (mem->npages << PAGE_SHIFT) +
  VIRTIODESCSPACE - 1ul;

 srcu_read_unlock(&vcpu->kvm->srcu, idx);
}
