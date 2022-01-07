
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;


 int BLK_EH_NOT_HANDLED ;
 int KERN_DEBUG ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,struct scsi_cmnd*) ;

enum blk_eh_timer_return sas_scsi_timed_out(struct scsi_cmnd *cmd)
{
 scmd_printk(KERN_DEBUG, cmd, "command %p timed out\n", cmd);

 return BLK_EH_NOT_HANDLED;
}
