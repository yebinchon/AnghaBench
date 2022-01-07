
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_shadow_walk_iterator {int shadow_addr; int* sptep; int level; } ;


 int PT64_BASE_ADDR_MASK ;

__attribute__((used)) static void shadow_walk_next(struct kvm_shadow_walk_iterator *iterator)
{
 iterator->shadow_addr = *iterator->sptep & PT64_BASE_ADDR_MASK;
 --iterator->level;
}
