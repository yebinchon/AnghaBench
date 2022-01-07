
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {TYPE_1__* cmd; int finish_tasklet; scalar_t__ data_early; scalar_t__ data; } ;
struct TYPE_2__ {int flags; int* resp; int data; scalar_t__ error; } ;


 int BUG_ON (int ) ;
 int MMC_RSP_136 ;
 int MMC_RSP_PRESENT ;
 scalar_t__ SDHCI_RESPONSE ;
 int sdhci_finish_data (struct sdhci_host*) ;
 int sdhci_readb (struct sdhci_host*,scalar_t__) ;
 int sdhci_readl (struct sdhci_host*,scalar_t__) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void sdhci_finish_command(struct sdhci_host *host)
{
 int i;

 BUG_ON(host->cmd == ((void*)0));

 if (host->cmd->flags & MMC_RSP_PRESENT) {
  if (host->cmd->flags & MMC_RSP_136) {

   for (i = 0;i < 4;i++) {
    host->cmd->resp[i] = sdhci_readl(host,
     SDHCI_RESPONSE + (3-i)*4) << 8;
    if (i != 3)
     host->cmd->resp[i] |=
      sdhci_readb(host,
      SDHCI_RESPONSE + (3-i)*4-1);
   }
  } else {
   host->cmd->resp[0] = sdhci_readl(host, SDHCI_RESPONSE);
  }
 }

 host->cmd->error = 0;

 if (host->data && host->data_early)
  sdhci_finish_data(host);

 if (!host->cmd->data)
  tasklet_schedule(&host->finish_tasklet);

 host->cmd = ((void*)0);
}
