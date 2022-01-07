
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pt1 {TYPE_1__* pdev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int PT1_PAGE_SHIFT ;
 int PT1_PAGE_SIZE ;
 void* dma_alloc_coherent (int *,int,int*,int ) ;

__attribute__((used)) static void *pt1_alloc_page(struct pt1 *pt1, dma_addr_t *addrp, u32 *pfnp)
{
 void *page;
 dma_addr_t addr;

 page = dma_alloc_coherent(&pt1->pdev->dev, PT1_PAGE_SIZE, &addr,
      GFP_KERNEL);
 if (page == ((void*)0))
  return ((void*)0);

 BUG_ON(addr & (PT1_PAGE_SIZE - 1));
 BUG_ON(addr >> PT1_PAGE_SHIFT >> 31 >> 1);

 *addrp = addr;
 *pfnp = addr >> PT1_PAGE_SHIFT;
 return page;
}
