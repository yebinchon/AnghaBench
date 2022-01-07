
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct scsi_qla_host {int host_no; } ;
struct ddb_entry {scalar_t__ fw_ddb_index; } ;
typedef int mbox_sts ;
typedef int mbox_cmd ;


 int DEBUG2 (int ) ;
 scalar_t__ MBOX_CMD_TARGET_WARM_RESET ;
 int MBOX_REG_COUNT ;
 scalar_t__ MBOX_STS_COMMAND_COMPLETE ;
 scalar_t__ MBOX_STS_COMMAND_ERROR ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int memset (scalar_t__**,int ,int) ;
 int printk (char*,int ,scalar_t__) ;
 int qla4xxx_mailbox_command (struct scsi_qla_host*,int,int,scalar_t__*,scalar_t__*) ;

int qla4xxx_reset_target(struct scsi_qla_host *ha,
    struct ddb_entry *ddb_entry)
{
 uint32_t mbox_cmd[MBOX_REG_COUNT];
 uint32_t mbox_sts[MBOX_REG_COUNT];
 int status = QLA_SUCCESS;

 DEBUG2(printk("scsi%ld:%d: target reset issued\n", ha->host_no,
        ddb_entry->fw_ddb_index));





 memset(&mbox_cmd, 0, sizeof(mbox_cmd));
 memset(&mbox_sts, 0, sizeof(mbox_sts));

 mbox_cmd[0] = MBOX_CMD_TARGET_WARM_RESET;
 mbox_cmd[1] = ddb_entry->fw_ddb_index;
 mbox_cmd[5] = 0x01;

 qla4xxx_mailbox_command(ha, MBOX_REG_COUNT, 1, &mbox_cmd[0],
    &mbox_sts[0]);
 if (mbox_sts[0] != MBOX_STS_COMMAND_COMPLETE &&
     mbox_sts[0] != MBOX_STS_COMMAND_ERROR)
  status = QLA_ERROR;

 return status;
}
