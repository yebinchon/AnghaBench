
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dev; } ;
struct iwl_dma_ptr {size_t size; int addr; int dma; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int ) ;
 int dma_alloc_coherent (int ,size_t,int *,int ) ;

__attribute__((used)) static int iwl_pcie_alloc_dma_ptr(struct iwl_trans *trans,
      struct iwl_dma_ptr *ptr, size_t size)
{
 if (WARN_ON(ptr->addr))
  return -EINVAL;

 ptr->addr = dma_alloc_coherent(trans->dev, size,
           &ptr->dma, GFP_KERNEL);
 if (!ptr->addr)
  return -ENOMEM;
 ptr->size = size;
 return 0;
}
