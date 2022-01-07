
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_memory_cache {size_t nobjs; void** objects; } ;


 int BUG_ON (int) ;

__attribute__((used)) static void *mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc,
        size_t size)
{
 void *p;

 BUG_ON(!mc->nobjs);
 p = mc->objects[--mc->nobjs];
 return p;
}
