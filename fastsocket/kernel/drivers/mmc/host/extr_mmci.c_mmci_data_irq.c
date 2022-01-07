
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {int sg_ptr; scalar_t__ sg_len; int data_xfered; } ;
struct mmc_data {int flags; int stop; int mrq; int error; scalar_t__ blksz; } ;


 int EILSEQ ;
 int EIO ;
 int ETIMEDOUT ;
 unsigned int MCI_DATABLOCKEND ;
 unsigned int MCI_DATACRCFAIL ;
 unsigned int MCI_DATAEND ;
 unsigned int MCI_DATATIMEOUT ;
 unsigned int MCI_RXOVERRUN ;
 unsigned int MCI_TXUNDERRUN ;
 int MMC_DATA_READ ;
 int flush_dcache_page (int ) ;
 int mmci_request_end (struct mmci_host*,int ) ;
 int mmci_start_command (struct mmci_host*,int ,int ) ;
 int mmci_stop_data (struct mmci_host*) ;
 int sg_page (int ) ;

__attribute__((used)) static void
mmci_data_irq(struct mmci_host *host, struct mmc_data *data,
       unsigned int status)
{
 if (status & MCI_DATABLOCKEND) {
  host->data_xfered += data->blksz;
 }
 if (status & (MCI_DATACRCFAIL|MCI_DATATIMEOUT|MCI_TXUNDERRUN|MCI_RXOVERRUN)) {
  if (status & MCI_DATACRCFAIL)
   data->error = -EILSEQ;
  else if (status & MCI_DATATIMEOUT)
   data->error = -ETIMEDOUT;
  else if (status & (MCI_TXUNDERRUN|MCI_RXOVERRUN))
   data->error = -EIO;
  status |= MCI_DATAEND;





  if (host->sg_len && data->flags & MMC_DATA_READ)
   flush_dcache_page(sg_page(host->sg_ptr));
 }
 if (status & MCI_DATAEND) {
  mmci_stop_data(host);

  if (!data->stop) {
   mmci_request_end(host, data->mrq);
  } else {
   mmci_start_command(host, data->stop, 0);
  }
 }
}
