
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {TYPE_3__* device; } ;
struct TYPE_6__ {TYPE_1__* host; } ;
struct TYPE_5__ {int (* eh_target_reset_handler ) (struct scsi_cmnd*) ;} ;
struct TYPE_4__ {int host_lock; TYPE_2__* hostt; } ;


 int FAILED ;
 int SUCCESS ;
 int __scsi_report_device_reset ;
 int __starget_for_each_device (int ,int *,int ) ;
 int scsi_target (TYPE_3__*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int scsi_try_target_reset(struct scsi_cmnd *scmd)
{
 unsigned long flags;
 int rtn;

 if (!scmd->device->host->hostt->eh_target_reset_handler)
  return FAILED;

 rtn = scmd->device->host->hostt->eh_target_reset_handler(scmd);
 if (rtn == SUCCESS) {
  spin_lock_irqsave(scmd->device->host->host_lock, flags);
  __starget_for_each_device(scsi_target(scmd->device), ((void*)0),
       __scsi_report_device_reset);
  spin_unlock_irqrestore(scmd->device->host->host_lock, flags);
 }

 return rtn;
}
