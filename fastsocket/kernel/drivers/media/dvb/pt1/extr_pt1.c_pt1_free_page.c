
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt1 {TYPE_1__* pdev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int PT1_PAGE_SIZE ;
 int dma_free_coherent (int *,int ,void*,int ) ;

__attribute__((used)) static void pt1_free_page(struct pt1 *pt1, void *page, dma_addr_t addr)
{
 dma_free_coherent(&pt1->pdev->dev, PT1_PAGE_SIZE, page, addr);
}
