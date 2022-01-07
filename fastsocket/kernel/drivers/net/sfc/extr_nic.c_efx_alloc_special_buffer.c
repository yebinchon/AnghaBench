
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct efx_special_buffer {unsigned int dma_addr; unsigned int len; unsigned int entries; scalar_t__ index; int addr; } ;
struct efx_nic {scalar_t__ next_buffer_table; scalar_t__ vf_buftbl_base; int net_dev; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int ALIGN (unsigned int,unsigned int) ;
 int BUG_ON (int) ;
 unsigned int EFX_BUF_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int *,unsigned int,unsigned int*,int ) ;
 scalar_t__ efx_sriov_enabled (struct efx_nic*) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,scalar_t__,scalar_t__,int ,unsigned int,int ,int ) ;
 int probe ;
 scalar_t__ virt_to_phys (int ) ;

__attribute__((used)) static int efx_alloc_special_buffer(struct efx_nic *efx,
        struct efx_special_buffer *buffer,
        unsigned int len)
{
 len = ALIGN(len, EFX_BUF_SIZE);

 buffer->addr = dma_alloc_coherent(&efx->pci_dev->dev, len,
       &buffer->dma_addr, GFP_KERNEL);
 if (!buffer->addr)
  return -ENOMEM;
 buffer->len = len;
 buffer->entries = len / EFX_BUF_SIZE;
 BUG_ON(buffer->dma_addr & (EFX_BUF_SIZE - 1));


 buffer->index = efx->next_buffer_table;
 efx->next_buffer_table += buffer->entries;





 netif_dbg(efx, probe, efx->net_dev,
    "allocating special buffers %d-%d at %llx+%x "
    "(virt %p phys %llx)\n", buffer->index,
    buffer->index + buffer->entries - 1,
    (u64)buffer->dma_addr, len,
    buffer->addr, (u64)virt_to_phys(buffer->addr));

 return 0;
}
