
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_shadow_walk_iterator {scalar_t__ level; int index; int shadow_addr; int * sptep; int addr; } ;


 scalar_t__ PT_PAGE_TABLE_LEVEL ;
 int SHADOW_PT_INDEX (int ,scalar_t__) ;
 scalar_t__ __va (int ) ;
 scalar_t__ is_large_pte (int ) ;

__attribute__((used)) static bool shadow_walk_okay(struct kvm_shadow_walk_iterator *iterator)
{
 if (iterator->level < PT_PAGE_TABLE_LEVEL)
  return 0;

 if (iterator->level == PT_PAGE_TABLE_LEVEL)
  if (is_large_pte(*iterator->sptep))
   return 0;

 iterator->index = SHADOW_PT_INDEX(iterator->addr, iterator->level);
 iterator->sptep = ((u64 *)__va(iterator->shadow_addr)) + iterator->index;
 return 1;
}
