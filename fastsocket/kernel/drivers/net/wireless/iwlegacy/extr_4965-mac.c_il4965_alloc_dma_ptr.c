
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {TYPE_1__* pci_dev; } ;
struct il_dma_ptr {size_t size; int addr; int dma; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int *,size_t,int *,int ) ;

__attribute__((used)) static inline int
il4965_alloc_dma_ptr(struct il_priv *il, struct il_dma_ptr *ptr, size_t size)
{
 ptr->addr = dma_alloc_coherent(&il->pci_dev->dev, size, &ptr->dma,
           GFP_KERNEL);
 if (!ptr->addr)
  return -ENOMEM;
 ptr->size = size;
 return 0;
}
