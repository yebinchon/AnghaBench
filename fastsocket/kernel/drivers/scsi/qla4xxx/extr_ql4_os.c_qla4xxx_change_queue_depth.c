
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int EOPNOTSUPP ;
 int iscsi_change_queue_depth (struct scsi_device*,int,int) ;
 int ql4xqfulltracking ;

__attribute__((used)) static int qla4xxx_change_queue_depth(struct scsi_device *sdev, int qdepth,
          int reason)
{
 if (!ql4xqfulltracking)
  return -EOPNOTSUPP;

 return iscsi_change_queue_depth(sdev, qdepth, reason);
}
