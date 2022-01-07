
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int cmd_len; int * cmnd; } ;


 int KERN_INFO ;
 int print_opcode_name (int *,int) ;
 int printk (char*,...) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*) ;

void scsi_print_command(struct scsi_cmnd *cmd)
{
 int k;

 if (cmd->cmnd == ((void*)0))
  return;

 scmd_printk(KERN_INFO, cmd, "CDB: ");
 print_opcode_name(cmd->cmnd, cmd->cmd_len);


 printk(":");
 for (k = 0; k < cmd->cmd_len; ++k)
  printk(" %02x", cmd->cmnd[k]);
 printk("\n");
}
