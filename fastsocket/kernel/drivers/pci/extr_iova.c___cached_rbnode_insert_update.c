
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {unsigned long dma_32bit_pfn; int * cached32_node; } ;
struct iova {int node; } ;



__attribute__((used)) static void
__cached_rbnode_insert_update(struct iova_domain *iovad,
 unsigned long limit_pfn, struct iova *new)
{
 if (limit_pfn != iovad->dma_32bit_pfn)
  return;
 iovad->cached32_node = &new->node;
}
