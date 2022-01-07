
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct efx_special_buffer {scalar_t__ entries; int * addr; scalar_t__ dma_addr; int len; scalar_t__ index; } ;
struct efx_nic {TYPE_1__* pci_dev; int net_dev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,int *,scalar_t__) ;
 int hw ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,scalar_t__,scalar_t__,int ,int ,int *,int ) ;
 scalar_t__ virt_to_phys (int *) ;

__attribute__((used)) static void
efx_free_special_buffer(struct efx_nic *efx, struct efx_special_buffer *buffer)
{
 if (!buffer->addr)
  return;

 netif_dbg(efx, hw, efx->net_dev,
    "deallocating special buffers %d-%d at %llx+%x "
    "(virt %p phys %llx)\n", buffer->index,
    buffer->index + buffer->entries - 1,
    (u64)buffer->dma_addr, buffer->len,
    buffer->addr, (u64)virt_to_phys(buffer->addr));

 dma_free_coherent(&efx->pci_dev->dev, buffer->len, buffer->addr,
     buffer->dma_addr);
 buffer->addr = ((void*)0);
 buffer->entries = 0;
}
