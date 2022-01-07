
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int cmd; } ;
struct mmc_omap_host {int dma_ch; scalar_t__ dma_in_use; struct mmc_request* mrq; } ;


 int BUG_ON (int ) ;
 int irqs_disabled () ;
 int mmc_omap_prepare_data (struct mmc_omap_host*,struct mmc_request*) ;
 int mmc_omap_start_command (struct mmc_omap_host*,int ) ;
 int omap_start_dma (int ) ;

__attribute__((used)) static void mmc_omap_start_request(struct mmc_omap_host *host,
       struct mmc_request *req)
{
 BUG_ON(host->mrq != ((void*)0));

 host->mrq = req;


 mmc_omap_prepare_data(host, req);
 mmc_omap_start_command(host, req->cmd);
 if (host->dma_in_use)
  omap_start_dma(host->dma_ch);
 BUG_ON(irqs_disabled());
}
