
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_driver {int dummy; } ;
struct scsi_cmnd {TYPE_2__* request; } ;
struct TYPE_4__ {TYPE_1__* rq_disk; } ;
struct TYPE_3__ {scalar_t__ private_data; } ;



__attribute__((used)) static struct scsi_driver *scsi_cmd_to_driver(struct scsi_cmnd *cmd)
{
 return *(struct scsi_driver **)cmd->request->rq_disk->private_data;
}
