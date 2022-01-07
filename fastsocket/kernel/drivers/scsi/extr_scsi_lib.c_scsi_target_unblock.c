
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SDEV_RUNNING ;
 int __scsi_target_unblock (struct device*,int ) ;

void
scsi_target_unblock(struct device *dev)
{
 __scsi_target_unblock(dev, SDEV_RUNNING);
}
