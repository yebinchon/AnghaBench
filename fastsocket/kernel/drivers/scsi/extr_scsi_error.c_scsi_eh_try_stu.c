
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_4__ {TYPE_1__* request_queue; scalar_t__ allow_restart; } ;
struct TYPE_3__ {int rq_timeout; } ;


 int NEEDS_RETRY ;

 int SUCCESS ;
 int scsi_send_eh_cmnd (struct scsi_cmnd*,unsigned char*,int,int ,int ) ;

__attribute__((used)) static int scsi_eh_try_stu(struct scsi_cmnd *scmd)
{
 static unsigned char stu_command[6] = {128, 0, 0, 0, 1, 0};

 if (scmd->device->allow_restart) {
  int i, rtn = NEEDS_RETRY;

  for (i = 0; rtn == NEEDS_RETRY && i < 2; i++)
   rtn = scsi_send_eh_cmnd(scmd, stu_command, 6, scmd->device->request_queue->rq_timeout, 0);

  if (rtn == SUCCESS)
   return 0;
 }

 return 1;
}
