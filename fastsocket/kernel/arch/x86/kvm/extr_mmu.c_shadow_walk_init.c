
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {scalar_t__ shadow_root_level; int * pae_root; int root_hpa; } ;
struct TYPE_4__ {TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_shadow_walk_iterator {int addr; scalar_t__ level; int shadow_addr; } ;


 scalar_t__ PT32E_ROOT_LEVEL ;
 int PT64_BASE_ADDR_MASK ;

__attribute__((used)) static void shadow_walk_init(struct kvm_shadow_walk_iterator *iterator,
        struct kvm_vcpu *vcpu, u64 addr)
{
 iterator->addr = addr;
 iterator->shadow_addr = vcpu->arch.mmu.root_hpa;
 iterator->level = vcpu->arch.mmu.shadow_root_level;
 if (iterator->level == PT32E_ROOT_LEVEL) {
  iterator->shadow_addr
   = vcpu->arch.mmu.pae_root[(addr >> 30) & 3];
  iterator->shadow_addr &= PT64_BASE_ADDR_MASK;
  --iterator->level;
  if (!iterator->shadow_addr)
   iterator->level = 0;
 }
}
