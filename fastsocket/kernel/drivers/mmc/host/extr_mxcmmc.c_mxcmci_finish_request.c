
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxcmci_host {int mmc; int * data; int * cmd; int * req; scalar_t__ base; } ;
struct mmc_request {int dummy; } ;


 scalar_t__ MMC_REG_INT_CNTR ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mxcmci_finish_request(struct mxcmci_host *host,
  struct mmc_request *req)
{
 writel(0, host->base + MMC_REG_INT_CNTR);

 host->req = ((void*)0);
 host->cmd = ((void*)0);
 host->data = ((void*)0);

 mmc_request_done(host->mmc, req);
}
