
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmc_command {int arg; } ;
struct atmel_mci {TYPE_1__* pdev; struct mmc_command* cmd; } ;
struct TYPE_2__ {int dev; } ;


 int ARGR ;
 int CMDR ;
 int WARN_ON (struct mmc_command*) ;
 int dev_vdbg (int *,char*,int ,int ) ;
 int mci_writel (struct atmel_mci*,int ,int ) ;

__attribute__((used)) static void atmci_start_command(struct atmel_mci *host,
  struct mmc_command *cmd, u32 cmd_flags)
{
 WARN_ON(host->cmd);
 host->cmd = cmd;

 dev_vdbg(&host->pdev->dev,
   "start command: ARGR=0x%08x CMDR=0x%08x\n",
   cmd->arg, cmd_flags);

 mci_writel(host, ARGR, cmd->arg);
 mci_writel(host, CMDR, cmd_flags);
}
