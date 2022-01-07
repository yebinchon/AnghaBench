
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int __scsi_try_to_abort_cmd (struct scsi_cmnd*) ;

__attribute__((used)) static int scsi_try_to_abort_cmd(struct scsi_cmnd *scmd)
{
 return __scsi_try_to_abort_cmd(scmd);
}
