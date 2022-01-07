
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ length; } ;
struct TYPE_10__ {scalar_t__ this_residual; int * ptr; scalar_t__ buffers_residual; TYPE_3__* buffer; } ;
struct TYPE_11__ {TYPE_1__ SCp; } ;
typedef TYPE_2__ Scsi_Cmnd ;


 int merge_contiguous_buffers (TYPE_2__*) ;
 scalar_t__ scsi_bufflen (TYPE_2__*) ;
 scalar_t__ scsi_sg_count (TYPE_2__*) ;
 TYPE_3__* scsi_sglist (TYPE_2__*) ;
 int * sg_virt (TYPE_3__*) ;

__attribute__((used)) static inline void initialize_SCp(Scsi_Cmnd *cmd)
{





 if (scsi_bufflen(cmd)) {
  cmd->SCp.buffer = scsi_sglist(cmd);
  cmd->SCp.buffers_residual = scsi_sg_count(cmd) - 1;
  cmd->SCp.ptr = sg_virt(cmd->SCp.buffer);
  cmd->SCp.this_residual = cmd->SCp.buffer->length;



  merge_contiguous_buffers(cmd);
 } else {
  cmd->SCp.buffer = ((void*)0);
  cmd->SCp.buffers_residual = 0;
  cmd->SCp.ptr = ((void*)0);
  cmd->SCp.this_residual = 0;
 }
}
