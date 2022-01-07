
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int __scsi_queue_insert (struct scsi_cmnd*,int,int) ;

void scsi_queue_insert(struct scsi_cmnd *cmd, int reason)
{
 __scsi_queue_insert(cmd, reason, 1);
}
