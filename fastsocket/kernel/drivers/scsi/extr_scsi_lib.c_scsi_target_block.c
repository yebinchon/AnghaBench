
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_block ;
 int device_for_each_child (struct device*,int *,int ) ;
 scalar_t__ scsi_is_target_device (struct device*) ;
 int starget_for_each_device (int ,int *,int ) ;
 int target_block ;
 int to_scsi_target (struct device*) ;

void
scsi_target_block(struct device *dev)
{
 if (scsi_is_target_device(dev))
  starget_for_each_device(to_scsi_target(dev), ((void*)0),
     device_block);
 else
  device_for_each_child(dev, ((void*)0), target_block);
}
