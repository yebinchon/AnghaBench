
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int error; int bytes_xfered; int sg; } ;
struct imxmci_host {struct mmc_data* data; int dma_size; int mmc; int dma_dir; int dma_nents; int dma; int pending_events; } ;


 int EILSEQ ;
 int EIO ;
 int ETIMEDOUT ;
 int IMXMCI_PEND_DMA_DATA_b ;
 unsigned int STATUS_CRC_READ_ERR ;
 unsigned int STATUS_CRC_WRITE_ERR ;
 unsigned int STATUS_ERR_MASK ;
 unsigned int STATUS_TIME_OUT_READ ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int imx_dma_disable (int ) ;
 int mmc_dev (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int imxmci_finish_data(struct imxmci_host *host, unsigned int stat)
{
 struct mmc_data *data = host->data;
 int data_error;

 if (test_and_clear_bit(IMXMCI_PEND_DMA_DATA_b, &host->pending_events)) {
  imx_dma_disable(host->dma);
  dma_unmap_sg(mmc_dev(host->mmc), data->sg, host->dma_nents,
        host->dma_dir);
 }

 if (stat & STATUS_ERR_MASK) {
  dev_dbg(mmc_dev(host->mmc), "request failed. status: 0x%08x\n", stat);
  if (stat & (STATUS_CRC_READ_ERR | STATUS_CRC_WRITE_ERR))
   data->error = -EILSEQ;
  else if (stat & STATUS_TIME_OUT_READ)
   data->error = -ETIMEDOUT;
  else
   data->error = -EIO;
 } else {
  data->bytes_xfered = host->dma_size;
 }

 data_error = data->error;

 host->data = ((void*)0);

 return data_error;
}
