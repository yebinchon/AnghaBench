
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {TYPE_3__* device; } ;
struct TYPE_6__ {TYPE_2__* host; } ;
struct TYPE_5__ {TYPE_1__* hostt; } ;
struct TYPE_4__ {int (* eh_device_reset_handler ) (struct scsi_cmnd*) ;} ;


 int FAILED ;
 int SUCCESS ;
 int __scsi_report_device_reset (TYPE_3__*,int *) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int scsi_try_bus_device_reset(struct scsi_cmnd *scmd)
{
 int rtn;

 if (!scmd->device->host->hostt->eh_device_reset_handler)
  return FAILED;

 rtn = scmd->device->host->hostt->eh_device_reset_handler(scmd);
 if (rtn == SUCCESS)
  __scsi_report_device_reset(scmd->device, ((void*)0));
 return rtn;
}
