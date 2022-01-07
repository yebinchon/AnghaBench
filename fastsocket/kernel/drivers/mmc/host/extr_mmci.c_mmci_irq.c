
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmci_host {int lock; struct mmc_command* cmd; struct mmc_data* data; scalar_t__ base; } ;
struct mmc_data {int dummy; } ;
struct mmc_command {int dummy; } ;
typedef int irqreturn_t ;


 int DBG (struct mmci_host*,char*,int) ;
 int IRQ_RETVAL (int) ;
 int MCI_CMDCRCFAIL ;
 int MCI_CMDRESPEND ;
 int MCI_CMDSENT ;
 int MCI_CMDTIMEOUT ;
 int MCI_DATABLOCKEND ;
 int MCI_DATACRCFAIL ;
 int MCI_DATAEND ;
 int MCI_DATATIMEOUT ;
 int MCI_RXOVERRUN ;
 int MCI_TXUNDERRUN ;
 scalar_t__ MMCICLEAR ;
 scalar_t__ MMCIMASK0 ;
 scalar_t__ MMCISTATUS ;
 int mmci_cmd_irq (struct mmci_host*,struct mmc_command*,int) ;
 int mmci_data_irq (struct mmci_host*,struct mmc_data*,int) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t mmci_irq(int irq, void *dev_id)
{
 struct mmci_host *host = dev_id;
 u32 status;
 int ret = 0;

 spin_lock(&host->lock);

 do {
  struct mmc_command *cmd;
  struct mmc_data *data;

  status = readl(host->base + MMCISTATUS);
  status &= readl(host->base + MMCIMASK0);
  writel(status, host->base + MMCICLEAR);

  DBG(host, "irq0 %08x\n", status);

  data = host->data;
  if (status & (MCI_DATACRCFAIL|MCI_DATATIMEOUT|MCI_TXUNDERRUN|
         MCI_RXOVERRUN|MCI_DATAEND|MCI_DATABLOCKEND) && data)
   mmci_data_irq(host, data, status);

  cmd = host->cmd;
  if (status & (MCI_CMDCRCFAIL|MCI_CMDTIMEOUT|MCI_CMDSENT|MCI_CMDRESPEND) && cmd)
   mmci_cmd_irq(host, cmd, status);

  ret = 1;
 } while (status);

 spin_unlock(&host->lock);

 return IRQ_RETVAL(ret);
}
