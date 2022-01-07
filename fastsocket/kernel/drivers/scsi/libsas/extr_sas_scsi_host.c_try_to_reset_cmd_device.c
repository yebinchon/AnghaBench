
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct Scsi_Host {TYPE_2__* hostt; } ;
struct TYPE_4__ {int (* eh_device_reset_handler ) (struct scsi_cmnd*) ;int (* eh_bus_reset_handler ) (struct scsi_cmnd*) ;} ;
struct TYPE_3__ {struct Scsi_Host* host; } ;


 int FAILED ;
 int SUCCESS ;
 int stub1 (struct scsi_cmnd*) ;
 int stub2 (struct scsi_cmnd*) ;

__attribute__((used)) static int try_to_reset_cmd_device(struct scsi_cmnd *cmd)
{
 int res;
 struct Scsi_Host *shost = cmd->device->host;

 if (!shost->hostt->eh_device_reset_handler)
  goto try_bus_reset;

 res = shost->hostt->eh_device_reset_handler(cmd);
 if (res == SUCCESS)
  return res;

try_bus_reset:
 if (shost->hostt->eh_bus_reset_handler)
  return shost->hostt->eh_bus_reset_handler(cmd);

 return FAILED;
}
