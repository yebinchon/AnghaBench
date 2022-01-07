
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* request; } ;
struct TYPE_2__ {scalar_t__ cmd_type; } ;


 scalar_t__ REQ_TYPE_FS ;

__attribute__((used)) static inline unsigned long sun3scsi_dma_xfer_len(unsigned long wanted,
        struct scsi_cmnd *cmd,
        int write_flag)
{
 if (cmd->request->cmd_type == REQ_TYPE_FS)
   return wanted;
 else
  return 0;
}
