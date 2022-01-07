
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int host_lock; } ;


 int ENTER ;
 int LEAVE ;
 int ipr_cancel_op (struct scsi_cmnd*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int ipr_eh_abort(struct scsi_cmnd * scsi_cmd)
{
 unsigned long flags;
 int rc;

 ENTER;

 spin_lock_irqsave(scsi_cmd->device->host->host_lock, flags);
 rc = ipr_cancel_op(scsi_cmd);
 spin_unlock_irqrestore(scsi_cmd->device->host->host_lock, flags);

 LEAVE;
 return rc;
}
