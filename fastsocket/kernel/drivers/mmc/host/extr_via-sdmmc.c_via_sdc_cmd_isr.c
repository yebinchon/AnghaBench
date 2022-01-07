
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct via_crdr_mmc_host {int finish_tasklet; TYPE_1__* cmd; int mmc; } ;
struct TYPE_2__ {int error; } ;


 int BUG_ON (int) ;
 int EILSEQ ;
 int ETIMEDOUT ;
 int VIA_CRDR_SDSTS_CRD ;
 int VIA_CRDR_SDSTS_CRTO ;
 int VIA_CRDR_SDSTS_SC ;
 int mmc_hostname (int ) ;
 int pr_err (char*,int ,int) ;
 int tasklet_schedule (int *) ;
 int via_sdc_finish_command (struct via_crdr_mmc_host*) ;

__attribute__((used)) static void via_sdc_cmd_isr(struct via_crdr_mmc_host *host, u16 intmask)
{
 BUG_ON(intmask == 0);

 if (!host->cmd) {
  pr_err("%s: Got command interrupt 0x%x even "
         "though no command operation was in progress.\n",
         mmc_hostname(host->mmc), intmask);
  return;
 }

 if (intmask & VIA_CRDR_SDSTS_CRTO)
  host->cmd->error = -ETIMEDOUT;
 else if (intmask & VIA_CRDR_SDSTS_SC)
  host->cmd->error = -EILSEQ;

 if (host->cmd->error)
  tasklet_schedule(&host->finish_tasklet);
 else if (intmask & VIA_CRDR_SDSTS_CRD)
  via_sdc_finish_command(host);
}
