
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3cmci_host {int dmatogo; int dma; scalar_t__ dma_complete; int mmc; } ;
struct mmc_data {int flags; int * sg; int sg_len; } ;


 int BOTH_DIR ;
 int BUG_ON (int) ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EBUSY ;
 int ENOMEM ;
 int MMC_DATA_WRITE ;
 int S3C2410_DMAOP_FLUSH ;
 int S3C2410_DMAOP_START ;
 int S3C2410_DMASRC_HW ;
 int S3C2410_DMASRC_MEM ;
 int dbg (struct s3cmci_host*,int ,char*,int,int ,int ) ;
 int dbg_dma ;
 int dma_map_sg (int ,int *,int ,int ) ;
 int mmc_dev (int ) ;
 int s3c2410_dma_ctrl (int ,int ) ;
 int s3c2410_dma_enqueue (int ,struct s3cmci_host*,int ,int ) ;
 int s3cmci_dma_setup (struct s3cmci_host*,int ) ;
 int sg_dma_address (int *) ;
 int sg_dma_len (int *) ;

__attribute__((used)) static int s3cmci_prepare_dma(struct s3cmci_host *host, struct mmc_data *data)
{
 int dma_len, i;
 int rw = data->flags & MMC_DATA_WRITE;

 BUG_ON((data->flags & BOTH_DIR) == BOTH_DIR);

 s3cmci_dma_setup(host, rw ? S3C2410_DMASRC_MEM : S3C2410_DMASRC_HW);
 s3c2410_dma_ctrl(host->dma, S3C2410_DMAOP_FLUSH);

 dma_len = dma_map_sg(mmc_dev(host->mmc), data->sg, data->sg_len,
        rw ? DMA_TO_DEVICE : DMA_FROM_DEVICE);

 if (dma_len == 0)
  return -ENOMEM;

 host->dma_complete = 0;
 host->dmatogo = dma_len;

 for (i = 0; i < dma_len; i++) {
  int res;

  dbg(host, dbg_dma, "enqueue %i: %08x@%u\n", i,
      sg_dma_address(&data->sg[i]),
      sg_dma_len(&data->sg[i]));

  res = s3c2410_dma_enqueue(host->dma, host,
       sg_dma_address(&data->sg[i]),
       sg_dma_len(&data->sg[i]));

  if (res) {
   s3c2410_dma_ctrl(host->dma, S3C2410_DMAOP_FLUSH);
   return -EBUSY;
  }
 }

 s3c2410_dma_ctrl(host->dma, S3C2410_DMAOP_START);

 return 0;
}
