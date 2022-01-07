
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ bus_mode; } ;
struct mmc_host {TYPE_1__ ios; } ;
struct mmc_data {int flags; int blocks; } ;
struct mmc_command {int flags; struct mmc_data* data; int opcode; int error; } ;


 int EINPROGRESS ;
 int MCI_CMDR_BLOCK ;
 int MCI_CMDR_CMDNB (int ) ;
 int MCI_CMDR_MAXLAT_64CYC ;
 int MCI_CMDR_MULTI_BLOCK ;
 int MCI_CMDR_OPDCMD ;
 int MCI_CMDR_RSPTYP_136BIT ;
 int MCI_CMDR_RSPTYP_48BIT ;
 int MCI_CMDR_START_XFER ;
 int MCI_CMDR_STREAM ;
 int MCI_CMDR_TRDIR_READ ;
 scalar_t__ MMC_BUSMODE_OPENDRAIN ;
 int MMC_DATA_READ ;
 int MMC_DATA_STREAM ;
 int MMC_RSP_136 ;
 int MMC_RSP_PRESENT ;

__attribute__((used)) static u32 atmci_prepare_command(struct mmc_host *mmc,
     struct mmc_command *cmd)
{
 struct mmc_data *data;
 u32 cmdr;

 cmd->error = -EINPROGRESS;

 cmdr = MCI_CMDR_CMDNB(cmd->opcode);

 if (cmd->flags & MMC_RSP_PRESENT) {
  if (cmd->flags & MMC_RSP_136)
   cmdr |= MCI_CMDR_RSPTYP_136BIT;
  else
   cmdr |= MCI_CMDR_RSPTYP_48BIT;
 }






 cmdr |= MCI_CMDR_MAXLAT_64CYC;

 if (mmc->ios.bus_mode == MMC_BUSMODE_OPENDRAIN)
  cmdr |= MCI_CMDR_OPDCMD;

 data = cmd->data;
 if (data) {
  cmdr |= MCI_CMDR_START_XFER;
  if (data->flags & MMC_DATA_STREAM)
   cmdr |= MCI_CMDR_STREAM;
  else if (data->blocks > 1)
   cmdr |= MCI_CMDR_MULTI_BLOCK;
  else
   cmdr |= MCI_CMDR_BLOCK;

  if (data->flags & MMC_DATA_READ)
   cmdr |= MCI_CMDR_TRDIR_READ;
 }

 return cmdr;
}
