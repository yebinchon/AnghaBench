
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_fb_priv {int base; scalar_t__ r100c10_page; int r100c10; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_device {int pdev; } ;


 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int __free_page (scalar_t__) ;
 int nouveau_fb_destroy (int *) ;
 struct nouveau_device* nv_device (struct nouveau_object*) ;
 int pci_unmap_page (int ,int ,int ,int ) ;

__attribute__((used)) static void
nvc0_fb_dtor(struct nouveau_object *object)
{
 struct nouveau_device *device = nv_device(object);
 struct nvc0_fb_priv *priv = (void *)object;

 if (priv->r100c10_page) {
  pci_unmap_page(device->pdev, priv->r100c10, PAGE_SIZE,
          PCI_DMA_BIDIRECTIONAL);
  __free_page(priv->r100c10_page);
 }

 nouveau_fb_destroy(&priv->base);
}
