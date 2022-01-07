
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dev; } ;
struct iwl_dma_ptr {int dma; int addr; int size; } ;


 int dma_free_coherent (int ,int ,int ,int ) ;
 int memset (struct iwl_dma_ptr*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void iwl_pcie_free_dma_ptr(struct iwl_trans *trans,
      struct iwl_dma_ptr *ptr)
{
 if (unlikely(!ptr->addr))
  return;

 dma_free_coherent(trans->dev, ptr->size, ptr->addr, ptr->dma);
 memset(ptr, 0, sizeof(*ptr));
}
