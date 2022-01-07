
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct t4_sq {int queue; int memsize; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct c4iw_rdev {TYPE_2__ lldi; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int *,int ,int ,int ) ;
 int mapping ;
 int pci_unmap_addr (struct t4_sq*,int ) ;

__attribute__((used)) static void dealloc_host_sq(struct c4iw_rdev *rdev, struct t4_sq *sq)
{
 dma_free_coherent(&(rdev->lldi.pdev->dev), sq->memsize, sq->queue,
     pci_unmap_addr(sq, mapping));
}
