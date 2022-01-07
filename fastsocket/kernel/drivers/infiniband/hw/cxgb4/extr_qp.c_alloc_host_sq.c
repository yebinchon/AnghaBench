
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct t4_sq {int dma_addr; int queue; int phys_addr; int memsize; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct c4iw_rdev {TYPE_2__ lldi; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;
 int mapping ;
 int pci_unmap_addr_set (struct t4_sq*,int ,int ) ;
 int virt_to_phys (int ) ;

__attribute__((used)) static int alloc_host_sq(struct c4iw_rdev *rdev, struct t4_sq *sq)
{
 sq->queue = dma_alloc_coherent(&(rdev->lldi.pdev->dev), sq->memsize,
           &(sq->dma_addr), GFP_KERNEL);
 if (!sq->queue)
  return -ENOMEM;
 sq->phys_addr = virt_to_phys(sq->queue);
 pci_unmap_addr_set(sq, mapping, sq->dma_addr);
 return 0;
}
