
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int result; } ;


 int KERN_INFO ;
 int scmd_printk (int ,struct scsi_cmnd*,char*) ;
 int scsi_show_result (int ) ;

void scsi_print_result(struct scsi_cmnd *cmd)
{
 scmd_printk(KERN_INFO, cmd, "");
 scsi_show_result(cmd->result);
}
