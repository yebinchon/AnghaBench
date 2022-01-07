
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tifm_sd {scalar_t__ open_drain; struct tifm_dev* dev; } ;
struct tifm_dev {scalar_t__ addr; int dev; } ;
struct mmc_command {unsigned int opcode; int arg; TYPE_1__* data; } ;
struct TYPE_2__ {int flags; } ;


 int MMC_DATA_READ ;
 scalar_t__ SOCK_MMCSD_ARG_HIGH ;
 scalar_t__ SOCK_MMCSD_ARG_LOW ;
 scalar_t__ SOCK_MMCSD_COMMAND ;
 unsigned int TIFM_MMCSD_ODTO ;
 unsigned int TIFM_MMCSD_READ ;
 int dev_dbg (int *,char*,unsigned int,int,unsigned int) ;
 unsigned int tifm_sd_op_flags (struct mmc_command*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void tifm_sd_exec(struct tifm_sd *host, struct mmc_command *cmd)
{
 struct tifm_dev *sock = host->dev;
 unsigned int cmd_mask = tifm_sd_op_flags(cmd);

 if (host->open_drain)
  cmd_mask |= TIFM_MMCSD_ODTO;

 if (cmd->data && (cmd->data->flags & MMC_DATA_READ))
  cmd_mask |= TIFM_MMCSD_READ;

 dev_dbg(&sock->dev, "executing opcode 0x%x, arg: 0x%x, mask: 0x%x\n",
  cmd->opcode, cmd->arg, cmd_mask);

 writel((cmd->arg >> 16) & 0xffff, sock->addr + SOCK_MMCSD_ARG_HIGH);
 writel(cmd->arg & 0xffff, sock->addr + SOCK_MMCSD_ARG_LOW);
 writel(cmd->opcode | cmd_mask, sock->addr + SOCK_MMCSD_COMMAND);
}
