
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct nv50_dmac {int base; int handle; scalar_t__ ptr; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 int PAGE_SIZE ;
 int nv50_chan_destroy (struct nouveau_object*,int *) ;
 TYPE_1__* nv_device (struct nouveau_object*) ;
 int pci_free_consistent (struct pci_dev*,int ,scalar_t__,int ) ;

__attribute__((used)) static void
nv50_dmac_destroy(struct nouveau_object *core, struct nv50_dmac *dmac)
{
 if (dmac->ptr) {
  struct pci_dev *pdev = nv_device(core)->pdev;
  pci_free_consistent(pdev, PAGE_SIZE, dmac->ptr, dmac->handle);
 }

 nv50_chan_destroy(core, &dmac->base);
}
