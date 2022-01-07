
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_special_buffer {int entries; int index; int dma_addr; int addr; } ;
struct efx_nic {int net_dev; } ;
typedef int efx_qword_t ;
typedef int dma_addr_t ;


 int EFX_BUF_SIZE ;
 int EFX_BUG_ON_PARANOID (int) ;
 int EFX_POPULATE_QWORD_3 (int ,int ,int ,int ,int,int ,int ) ;
 int FRF_AZ_BUF_ADR_FBUF ;
 int FRF_AZ_BUF_ADR_REGION ;
 int FRF_AZ_BUF_OWNER_ID_FBUF ;
 int efx_write_buf_tbl (struct efx_nic*,int *,unsigned int) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,unsigned int,unsigned long long) ;
 int probe ;

__attribute__((used)) static void
efx_init_special_buffer(struct efx_nic *efx, struct efx_special_buffer *buffer)
{
 efx_qword_t buf_desc;
 unsigned int index;
 dma_addr_t dma_addr;
 int i;

 EFX_BUG_ON_PARANOID(!buffer->addr);


 for (i = 0; i < buffer->entries; i++) {
  index = buffer->index + i;
  dma_addr = buffer->dma_addr + (i * EFX_BUF_SIZE);
  netif_dbg(efx, probe, efx->net_dev,
     "mapping special buffer %d at %llx\n",
     index, (unsigned long long)dma_addr);
  EFX_POPULATE_QWORD_3(buf_desc,
         FRF_AZ_BUF_ADR_REGION, 0,
         FRF_AZ_BUF_ADR_FBUF, dma_addr >> 12,
         FRF_AZ_BUF_OWNER_ID_FBUF, 0);
  efx_write_buf_tbl(efx, &buf_desc, index);
 }
}
