
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long this_residual; unsigned long dma_handle; void* ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct ip22_hostdata {struct hpc_chunk* cpu; int dev; } ;
struct TYPE_4__ {unsigned long pbuf; unsigned long cntinfo; } ;
struct hpc_chunk {TYPE_2__ desc; } ;
typedef unsigned long dma_addr_t ;


 int DMA_DIR (int) ;
 int DMA_TO_DEVICE ;
 unsigned long HPCDMA_EOX ;
 int dma_cache_sync (int ,struct hpc_chunk*,unsigned long,int ) ;
 unsigned long dma_map_single (int ,void*,unsigned long,int ) ;

__attribute__((used)) static inline
void fill_hpc_entries(struct ip22_hostdata *hd, struct scsi_cmnd *cmd, int din)
{
 unsigned long len = cmd->SCp.this_residual;
 void *addr = cmd->SCp.ptr;
 dma_addr_t physaddr;
 unsigned long count;
 struct hpc_chunk *hcp;

 physaddr = dma_map_single(hd->dev, addr, len, DMA_DIR(din));
 cmd->SCp.dma_handle = physaddr;
 hcp = hd->cpu;

 while (len) {




  count = len > 8192 ? 8192 : len;
  hcp->desc.pbuf = physaddr;
  hcp->desc.cntinfo = count;
  hcp++;
  len -= count;
  physaddr += count;
 }






 hcp->desc.pbuf = 0;
 hcp->desc.cntinfo = HPCDMA_EOX;
 dma_cache_sync(hd->dev, hd->cpu,
         (unsigned long)(hcp + 1) - (unsigned long)hd->cpu,
         DMA_TO_DEVICE);
}
