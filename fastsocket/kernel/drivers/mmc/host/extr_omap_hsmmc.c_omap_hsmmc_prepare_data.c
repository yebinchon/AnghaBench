
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_hsmmc_host {int mmc; scalar_t__ use_dma; int base; TYPE_2__* data; } ;
struct mmc_request {TYPE_2__* data; TYPE_1__* cmd; } ;
struct TYPE_4__ {int blksz; int blocks; unsigned int timeout_ns; int timeout_clks; } ;
struct TYPE_3__ {int flags; } ;


 int BLK ;
 int MMC_RSP_BUSY ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;
 int dev_dbg (int ,char*) ;
 int mmc_dev (int ) ;
 int omap_hsmmc_start_dma_transfer (struct omap_hsmmc_host*,struct mmc_request*) ;
 int set_data_timeout (struct omap_hsmmc_host*,unsigned int,int ) ;

__attribute__((used)) static int
omap_hsmmc_prepare_data(struct omap_hsmmc_host *host, struct mmc_request *req)
{
 int ret;
 host->data = req->data;

 if (req->data == ((void*)0)) {
  OMAP_HSMMC_WRITE(host->base, BLK, 0);




  if (req->cmd->flags & MMC_RSP_BUSY)
   set_data_timeout(host, 100000000U, 0);
  return 0;
 }

 OMAP_HSMMC_WRITE(host->base, BLK, (req->data->blksz)
     | (req->data->blocks << 16));
 set_data_timeout(host, req->data->timeout_ns, req->data->timeout_clks);

 if (host->use_dma) {
  ret = omap_hsmmc_start_dma_transfer(host, req);
  if (ret != 0) {
   dev_dbg(mmc_dev(host->mmc), "MMC start dma failure\n");
   return ret;
  }
 }
 return 0;
}
