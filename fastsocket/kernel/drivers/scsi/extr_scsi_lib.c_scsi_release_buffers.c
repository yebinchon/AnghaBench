
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int __scsi_release_buffers (struct scsi_cmnd*,int) ;

void scsi_release_buffers(struct scsi_cmnd *cmd)
{
 __scsi_release_buffers(cmd, 1);
}
