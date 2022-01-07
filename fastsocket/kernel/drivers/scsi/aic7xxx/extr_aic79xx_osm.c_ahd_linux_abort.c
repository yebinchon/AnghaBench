
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int ahd_linux_queue_abort_cmd (struct scsi_cmnd*) ;

__attribute__((used)) static int
ahd_linux_abort(struct scsi_cmnd *cmd)
{
 int error;

 error = ahd_linux_queue_abort_cmd(cmd);

 return error;
}
