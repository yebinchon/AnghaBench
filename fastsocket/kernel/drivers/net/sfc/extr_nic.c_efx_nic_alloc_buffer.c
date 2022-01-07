
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* pci_dev; } ;
struct efx_buffer {unsigned int len; int addr; int dma_addr; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int __GFP_ZERO ;
 int dma_alloc_coherent (int *,unsigned int,int *,int) ;

int efx_nic_alloc_buffer(struct efx_nic *efx, struct efx_buffer *buffer,
    unsigned int len)
{
 buffer->addr = dma_alloc_coherent(&efx->pci_dev->dev, len,
       &buffer->dma_addr,
       GFP_ATOMIC | __GFP_ZERO);
 if (!buffer->addr)
  return -ENOMEM;
 buffer->len = len;
 return 0;
}
