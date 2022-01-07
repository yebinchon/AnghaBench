
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8695_priv {int ring_base_dma; int ring_base; int dev; scalar_t__ phyiface_req; scalar_t__ regs_req; scalar_t__ phyiface_regs; scalar_t__ io_regs; } ;


 int RING_DMA_SIZE ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int iounmap (scalar_t__) ;
 int kfree (scalar_t__) ;
 int release_resource (scalar_t__) ;

__attribute__((used)) static void
ks8695_release_device(struct ks8695_priv *ksp)
{

 iounmap(ksp->io_regs);
 if (ksp->phyiface_regs)
  iounmap(ksp->phyiface_regs);


 release_resource(ksp->regs_req);
 kfree(ksp->regs_req);
 if (ksp->phyiface_req) {
  release_resource(ksp->phyiface_req);
  kfree(ksp->phyiface_req);
 }


 dma_free_coherent(ksp->dev, RING_DMA_SIZE,
     ksp->ring_base, ksp->ring_base_dma);
}
