
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_2__ {int eh_timeout; } ;


 int scsi_send_eh_cmnd (struct scsi_cmnd*,int *,int ,int ,int ) ;

__attribute__((used)) static int scsi_request_sense(struct scsi_cmnd *scmd)
{
 return scsi_send_eh_cmnd(scmd, ((void*)0), 0, scmd->device->eh_timeout, ~0);
}
