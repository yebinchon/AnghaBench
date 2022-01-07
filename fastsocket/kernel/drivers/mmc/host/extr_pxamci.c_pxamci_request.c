
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxamci_host {unsigned int cmdat; struct mmc_request* mrq; } ;
struct mmc_request {int cmd; TYPE_1__* data; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 unsigned int CMDAT_BUSY ;
 unsigned int CMDAT_DATAEN ;
 unsigned int CMDAT_DMAEN ;
 unsigned int CMDAT_INIT ;
 unsigned int CMDAT_STREAM ;
 unsigned int CMDAT_WRITE ;
 int MMC_DATA_STREAM ;
 int MMC_DATA_WRITE ;
 int WARN_ON (int ) ;
 struct pxamci_host* mmc_priv (struct mmc_host*) ;
 int pxamci_setup_data (struct pxamci_host*,TYPE_1__*) ;
 int pxamci_start_cmd (struct pxamci_host*,int ,unsigned int) ;
 int pxamci_stop_clock (struct pxamci_host*) ;

__attribute__((used)) static void pxamci_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct pxamci_host *host = mmc_priv(mmc);
 unsigned int cmdat;

 WARN_ON(host->mrq != ((void*)0));

 host->mrq = mrq;

 pxamci_stop_clock(host);

 cmdat = host->cmdat;
 host->cmdat &= ~CMDAT_INIT;

 if (mrq->data) {
  pxamci_setup_data(host, mrq->data);

  cmdat &= ~CMDAT_BUSY;
  cmdat |= CMDAT_DATAEN | CMDAT_DMAEN;
  if (mrq->data->flags & MMC_DATA_WRITE)
   cmdat |= CMDAT_WRITE;

  if (mrq->data->flags & MMC_DATA_STREAM)
   cmdat |= CMDAT_STREAM;
 }

 pxamci_start_cmd(host, mrq->cmd, cmdat);
}
