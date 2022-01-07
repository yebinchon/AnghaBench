
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mmc_host {int dummy; } ;
struct mmc_data {int error; int blksz; int blocks; } ;
struct mmc_command {int flags; scalar_t__ error; int arg; struct mmc_data* data; } ;
struct cb710_slot {int dummy; } ;
struct cb710_mmc_reader {int dummy; } ;


 int CB710_MMC_CMD_PARAM_PORT ;
 int CB710_MMC_CMD_TYPE_PORT ;
 int CB710_MMC_CONFIG0_PORT ;
 int CB710_MMC_S1_COMMAND_SENT ;
 int CB710_MMC_S2_BUSY_10 ;
 int CB710_MMC_S2_BUSY_20 ;
 int EINVAL ;
 int MMC_RSP_PRESENT ;
 int cb710_encode_cmd_flags (struct cb710_mmc_reader*,struct mmc_command*) ;
 int cb710_is_transfer_size_supported (struct mmc_data*) ;
 int cb710_mmc_reset_events (struct cb710_slot*) ;
 int cb710_mmc_set_transfer_size (struct cb710_slot*,int ,int ) ;
 struct cb710_slot* cb710_mmc_to_slot (struct mmc_host*) ;
 int cb710_mmc_transfer_data (struct cb710_slot*,struct mmc_data*) ;
 int cb710_modify_port_8 (struct cb710_slot*,int ,int,int ) ;
 int cb710_receive_response (struct cb710_slot*,struct mmc_command*) ;
 int cb710_slot_dev (struct cb710_slot*) ;
 scalar_t__ cb710_wait_for_event (struct cb710_slot*,int ) ;
 int cb710_wait_while_busy (struct cb710_slot*,int) ;
 int cb710_write_port_16 (struct cb710_slot*,int ,int ) ;
 int cb710_write_port_32 (struct cb710_slot*,int ,int ) ;
 int dev_dbg (int ,char*,int ) ;
 struct cb710_mmc_reader* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static int cb710_mmc_command(struct mmc_host *mmc, struct mmc_command *cmd)
{
 struct cb710_slot *slot = cb710_mmc_to_slot(mmc);
 struct cb710_mmc_reader *reader = mmc_priv(mmc);
 struct mmc_data *data = cmd->data;

 u16 cb_cmd = cb710_encode_cmd_flags(reader, cmd);
 dev_dbg(cb710_slot_dev(slot), "cmd request: 0x%04X\n", cb_cmd);

 if (data) {
  if (!cb710_is_transfer_size_supported(data)) {
   data->error = -EINVAL;
   return -1;
  }
  cb710_mmc_set_transfer_size(slot, data->blocks, data->blksz);
 }

 cb710_wait_while_busy(slot, CB710_MMC_S2_BUSY_20|CB710_MMC_S2_BUSY_10);
 cb710_write_port_16(slot, CB710_MMC_CMD_TYPE_PORT, cb_cmd);
 cb710_wait_while_busy(slot, CB710_MMC_S2_BUSY_20);
 cb710_write_port_32(slot, CB710_MMC_CMD_PARAM_PORT, cmd->arg);
 cb710_mmc_reset_events(slot);
 cb710_wait_while_busy(slot, CB710_MMC_S2_BUSY_20);
 cb710_modify_port_8(slot, CB710_MMC_CONFIG0_PORT, 0x01, 0);

 cmd->error = cb710_wait_for_event(slot, CB710_MMC_S1_COMMAND_SENT);
 if (cmd->error)
  return -1;

 if (cmd->flags & MMC_RSP_PRESENT) {
  cb710_receive_response(slot, cmd);
  if (cmd->error)
   return -1;
 }

 if (data)
  data->error = cb710_mmc_transfer_data(slot, data);
 return 0;
}
