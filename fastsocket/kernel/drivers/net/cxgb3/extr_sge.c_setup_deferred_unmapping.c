
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ head; } ;
struct sg_ent {int * addr; } ;
struct pci_dev {int dummy; } ;
struct deferred_unmap_info {void** addr; struct pci_dev* pdev; } ;
typedef void* dma_addr_t ;


 void* be64_to_cpu (int ) ;

__attribute__((used)) static void setup_deferred_unmapping(struct sk_buff *skb, struct pci_dev *pdev,
         const struct sg_ent *sgl, int sgl_flits)
{
 dma_addr_t *p;
 struct deferred_unmap_info *dui;

 dui = (struct deferred_unmap_info *)skb->head;
 dui->pdev = pdev;
 for (p = dui->addr; sgl_flits >= 3; sgl++, sgl_flits -= 3) {
  *p++ = be64_to_cpu(sgl->addr[0]);
  *p++ = be64_to_cpu(sgl->addr[1]);
 }
 if (sgl_flits)
  *p = be64_to_cpu(sgl->addr[0]);
}
