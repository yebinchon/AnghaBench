
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* ptr; scalar_t__ this_residual; scalar_t__ buffers_residual; TYPE_2__* buffer; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct TYPE_5__ {scalar_t__ length; } ;


 scalar_t__ SGADDR (TYPE_2__*) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 scalar_t__ scsi_sg_count (struct scsi_cmnd*) ;
 TYPE_2__* scsi_sglist (struct scsi_cmnd*) ;

__attribute__((used)) static __inline__ void initialize_SCp(struct scsi_cmnd *cmd)
{





    if (scsi_bufflen(cmd)) {
 cmd->SCp.buffer = scsi_sglist(cmd);
 cmd->SCp.buffers_residual = scsi_sg_count(cmd) - 1;
 cmd->SCp.ptr = (char *) SGADDR(cmd->SCp.buffer);
 cmd->SCp.this_residual = cmd->SCp.buffer->length;





    } else {
 cmd->SCp.buffer = ((void*)0);
 cmd->SCp.buffers_residual = 0;
 cmd->SCp.ptr = ((void*)0);
 cmd->SCp.this_residual = 0;
    }

}
