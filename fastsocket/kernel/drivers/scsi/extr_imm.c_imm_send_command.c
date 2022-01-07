
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int cmd_len; int * cmnd; TYPE_1__* device; } ;
typedef int imm_struct ;
struct TYPE_2__ {int host; } ;


 int * imm_dev (int ) ;
 int imm_out (int *,int *,int) ;

__attribute__((used)) static inline int imm_send_command(struct scsi_cmnd *cmd)
{
 imm_struct *dev = imm_dev(cmd->device->host);
 int k;


 for (k = 0; k < cmd->cmd_len; k += 2)
  if (!imm_out(dev, &cmd->cmnd[k], 2))
   return 0;
 return 1;
}
