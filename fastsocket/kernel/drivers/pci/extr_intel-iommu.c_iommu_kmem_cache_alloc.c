
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kmem_cache {int dummy; } ;
struct TYPE_2__ {unsigned int flags; } ;


 int GFP_ATOMIC ;
 unsigned int PF_MEMALLOC ;
 TYPE_1__* current ;
 void* kmem_cache_alloc (struct kmem_cache*,int ) ;

__attribute__((used)) static inline void *iommu_kmem_cache_alloc(struct kmem_cache *cachep)
{
 unsigned int flags;
 void *vaddr;


 flags = current->flags & PF_MEMALLOC;
 current->flags |= PF_MEMALLOC;
 vaddr = kmem_cache_alloc(cachep, GFP_ATOMIC);
 current->flags &= (~PF_MEMALLOC | flags);
 return vaddr;
}
