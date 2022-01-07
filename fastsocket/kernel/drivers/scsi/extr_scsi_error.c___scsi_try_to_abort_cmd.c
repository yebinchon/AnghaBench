
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
struct TYPE_4__ {int (* eh_abort_handler ) (struct scsi_cmnd*) ;} ;


 int FAILED ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int __scsi_try_to_abort_cmd(struct scsi_cmnd *scmd)
{
 if (!scmd->device->host->hostt->eh_abort_handler)
  return FAILED;

 return scmd->device->host->hostt->eh_abort_handler(scmd);
}
