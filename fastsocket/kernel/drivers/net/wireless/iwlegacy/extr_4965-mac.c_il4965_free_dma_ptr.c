
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {TYPE_1__* pci_dev; } ;
struct il_dma_ptr {int dma; int addr; int size; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,int ,int ) ;
 int memset (struct il_dma_ptr*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void
il4965_free_dma_ptr(struct il_priv *il, struct il_dma_ptr *ptr)
{
 if (unlikely(!ptr->addr))
  return;

 dma_free_coherent(&il->pci_dev->dev, ptr->size, ptr->addr, ptr->dma);
 memset(ptr, 0, sizeof(*ptr));
}
