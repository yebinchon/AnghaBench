
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct scatterlist {int dummy; } ;
struct mmc_omap_host {int dma_ch; size_t sg_idx; unsigned long phys_base; int dma_len; } ;
struct mmc_data {int blksz; int blocks; int flags; struct scatterlist* sg; } ;


 int BUF ;
 int BUG_ON (int) ;
 int MMC_DATA_WRITE ;
 int OMAP24XX_DMA_MMC1_RX ;
 int OMAP24XX_DMA_MMC1_TX ;
 int OMAP_DMA_AMODE_CONSTANT ;
 int OMAP_DMA_AMODE_POST_INC ;
 int OMAP_DMA_DATA_BURST_4 ;
 int OMAP_DMA_DATA_TYPE_S16 ;
 int OMAP_DMA_PORT_EMIFF ;
 int OMAP_DMA_PORT_TIPB ;
 int OMAP_DMA_SYNC_FRAME ;
 unsigned long OMAP_MMC_REG_DATA ;
 int OMAP_MMC_WRITE (struct mmc_omap_host*,int ,int) ;
 scalar_t__ cpu_class_is_omap1 () ;
 scalar_t__ cpu_is_omap15xx () ;
 scalar_t__ cpu_is_omap24xx () ;
 int omap_set_dma_dest_burst_mode (int,int ) ;
 int omap_set_dma_dest_data_pack (int,int) ;
 int omap_set_dma_dest_params (int,int,int ,unsigned long,int ,int ) ;
 int omap_set_dma_src_burst_mode (int,int ) ;
 int omap_set_dma_src_data_pack (int,int) ;
 int omap_set_dma_src_params (int,int,int ,unsigned long,int ,int ) ;
 int omap_set_dma_transfer_params (int,int ,int,int,int ,int,int ) ;
 unsigned long sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static void
mmc_omap_prepare_dma(struct mmc_omap_host *host, struct mmc_data *data)
{
 int dma_ch = host->dma_ch;
 unsigned long data_addr;
 u16 buf, frame;
 u32 count;
 struct scatterlist *sg = &data->sg[host->sg_idx];
 int src_port = 0;
 int dst_port = 0;
 int sync_dev = 0;

 data_addr = host->phys_base + OMAP_MMC_REG_DATA;
 frame = data->blksz;
 count = sg_dma_len(sg);

 if ((data->blocks == 1) && (count > data->blksz))
  count = frame;

 host->dma_len = count;





 if (cpu_is_omap15xx() && frame > 32)
  frame = 32;
 else if (frame > 64)
  frame = 64;
 count /= frame;
 frame >>= 1;

 if (!(data->flags & MMC_DATA_WRITE)) {
  buf = 0x800f | ((frame - 1) << 8);

  if (cpu_class_is_omap1()) {
   src_port = OMAP_DMA_PORT_TIPB;
   dst_port = OMAP_DMA_PORT_EMIFF;
  }
  if (cpu_is_omap24xx())
   sync_dev = OMAP24XX_DMA_MMC1_RX;

  omap_set_dma_src_params(dma_ch, src_port,
     OMAP_DMA_AMODE_CONSTANT,
     data_addr, 0, 0);
  omap_set_dma_dest_params(dma_ch, dst_port,
      OMAP_DMA_AMODE_POST_INC,
      sg_dma_address(sg), 0, 0);
  omap_set_dma_dest_data_pack(dma_ch, 1);
  omap_set_dma_dest_burst_mode(dma_ch, OMAP_DMA_DATA_BURST_4);
 } else {
  buf = 0x0f80 | ((frame - 1) << 0);

  if (cpu_class_is_omap1()) {
   src_port = OMAP_DMA_PORT_EMIFF;
   dst_port = OMAP_DMA_PORT_TIPB;
  }
  if (cpu_is_omap24xx())
   sync_dev = OMAP24XX_DMA_MMC1_TX;

  omap_set_dma_dest_params(dma_ch, dst_port,
      OMAP_DMA_AMODE_CONSTANT,
      data_addr, 0, 0);
  omap_set_dma_src_params(dma_ch, src_port,
     OMAP_DMA_AMODE_POST_INC,
     sg_dma_address(sg), 0, 0);
  omap_set_dma_src_data_pack(dma_ch, 1);
  omap_set_dma_src_burst_mode(dma_ch, OMAP_DMA_DATA_BURST_4);
 }


 BUG_ON(count > 0xffff);

 OMAP_MMC_WRITE(host, BUF, buf);
 omap_set_dma_transfer_params(dma_ch, OMAP_DMA_DATA_TYPE_S16,
         frame, count, OMAP_DMA_SYNC_FRAME,
         sync_dev, 0);
}
