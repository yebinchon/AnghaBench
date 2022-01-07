
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct fw_desc {int * v_addr; int p_addr; int len; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int * dma_alloc_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static inline int
il_alloc_fw_desc(struct pci_dev *pci_dev, struct fw_desc *desc)
{
 if (!desc->len) {
  desc->v_addr = ((void*)0);
  return -EINVAL;
 }

 desc->v_addr = dma_alloc_coherent(&pci_dev->dev, desc->len,
       &desc->p_addr, GFP_KERNEL);
 return (desc->v_addr != ((void*)0)) ? 0 : -ENOMEM;
}
