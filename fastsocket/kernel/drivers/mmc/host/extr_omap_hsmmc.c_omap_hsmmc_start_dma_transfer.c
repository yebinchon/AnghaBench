
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; } ;
struct omap_hsmmc_host {int dma_ch; scalar_t__ dma_sg_idx; int mmc; int dma_len; int sem; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_data {int sg_len; int blksz; struct scatterlist* sg; } ;


 int EINVAL ;
 int TASK_UNINTERRUPTIBLE ;
 int dev_err (int ,char*,int ,int) ;
 int dma_map_sg (int ,struct scatterlist*,int,int ) ;
 scalar_t__ down_trylock (int *) ;
 int mmc_dev (int ) ;
 int mmc_hostname (int ) ;
 int omap_free_dma (int) ;
 int omap_hsmmc_config_dma_params (struct omap_hsmmc_host*,struct mmc_data*,struct scatterlist*) ;
 int omap_hsmmc_dma_cb ;
 int omap_hsmmc_get_dma_dir (struct omap_hsmmc_host*,struct mmc_data*) ;
 int omap_hsmmc_get_dma_sync_dev (struct omap_hsmmc_host*,struct mmc_data*) ;
 int omap_request_dma (int ,char*,int ,struct omap_hsmmc_host*,int*) ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 int up (int *) ;

__attribute__((used)) static int omap_hsmmc_start_dma_transfer(struct omap_hsmmc_host *host,
     struct mmc_request *req)
{
 int dma_ch = 0, ret = 0, err = 1, i;
 struct mmc_data *data = req->data;


 for (i = 0; i < data->sg_len; i++) {
  struct scatterlist *sgl;

  sgl = data->sg + i;
  if (sgl->length % data->blksz)
   return -EINVAL;
 }
 if ((data->blksz % 4) != 0)



  return -EINVAL;





 if (host->dma_ch != -1) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule_timeout(100);
  if (down_trylock(&host->sem)) {
   omap_free_dma(host->dma_ch);
   host->dma_ch = -1;
   up(&host->sem);
   return err;
  }
 } else {
  if (down_trylock(&host->sem))
   return err;
 }

 ret = omap_request_dma(omap_hsmmc_get_dma_sync_dev(host, data),
          "MMC/SD", omap_hsmmc_dma_cb, host, &dma_ch);
 if (ret != 0) {
  dev_err(mmc_dev(host->mmc),
   "%s: omap_request_dma() failed with %d\n",
   mmc_hostname(host->mmc), ret);
  return ret;
 }

 host->dma_len = dma_map_sg(mmc_dev(host->mmc), data->sg,
   data->sg_len, omap_hsmmc_get_dma_dir(host, data));
 host->dma_ch = dma_ch;
 host->dma_sg_idx = 0;

 omap_hsmmc_config_dma_params(host, data, data->sg);

 return 0;
}
