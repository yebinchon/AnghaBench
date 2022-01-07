
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tifm_sd {int cmd_flags; int finish_tasklet; TYPE_2__* req; scalar_t__ no_dma; struct tifm_dev* dev; } ;
struct tifm_dev {scalar_t__ addr; } ;
struct mmc_command {TYPE_1__* data; scalar_t__ error; } ;
struct TYPE_4__ {scalar_t__ stop; struct mmc_command* cmd; } ;
struct TYPE_3__ {int flags; scalar_t__ error; } ;


 int BRS_READY ;
 int CARD_BUSY ;
 int CMD_READY ;
 int FIFO_READY ;
 int MMC_DATA_WRITE ;
 int SCMD_ACTIVE ;
 int SCMD_READY ;
 scalar_t__ SOCK_MMCSD_INT_ENABLE ;
 int TIFM_MMCSD_EOFB ;
 int readl (scalar_t__) ;
 int tasklet_schedule (int *) ;
 int tifm_sd_exec (struct tifm_sd*,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void tifm_sd_check_status(struct tifm_sd *host)
{
 struct tifm_dev *sock = host->dev;
 struct mmc_command *cmd = host->req->cmd;

 if (cmd->error)
  goto finish_request;

 if (!(host->cmd_flags & CMD_READY))
  return;

 if (cmd->data) {
  if (cmd->data->error) {
   if ((host->cmd_flags & SCMD_ACTIVE)
       && !(host->cmd_flags & SCMD_READY))
    return;

   goto finish_request;
  }

  if (!(host->cmd_flags & BRS_READY))
   return;

  if (!(host->no_dma || (host->cmd_flags & FIFO_READY)))
   return;

  if (cmd->data->flags & MMC_DATA_WRITE) {
   if (host->req->stop) {
    if (!(host->cmd_flags & SCMD_ACTIVE)) {
     host->cmd_flags |= SCMD_ACTIVE;
     writel(TIFM_MMCSD_EOFB
            | readl(sock->addr
             + SOCK_MMCSD_INT_ENABLE),
            sock->addr
            + SOCK_MMCSD_INT_ENABLE);
     tifm_sd_exec(host, host->req->stop);
     return;
    } else {
     if (!(host->cmd_flags & SCMD_READY)
         || (host->cmd_flags & CARD_BUSY))
      return;
     writel((~TIFM_MMCSD_EOFB)
            & readl(sock->addr
             + SOCK_MMCSD_INT_ENABLE),
            sock->addr
            + SOCK_MMCSD_INT_ENABLE);
    }
   } else {
    if (host->cmd_flags & CARD_BUSY)
     return;
    writel((~TIFM_MMCSD_EOFB)
           & readl(sock->addr
            + SOCK_MMCSD_INT_ENABLE),
           sock->addr + SOCK_MMCSD_INT_ENABLE);
   }
  } else {
   if (host->req->stop) {
    if (!(host->cmd_flags & SCMD_ACTIVE)) {
     host->cmd_flags |= SCMD_ACTIVE;
     tifm_sd_exec(host, host->req->stop);
     return;
    } else {
     if (!(host->cmd_flags & SCMD_READY))
      return;
    }
   }
  }
 }
finish_request:
 tasklet_schedule(&host->finish_tasklet);
}
