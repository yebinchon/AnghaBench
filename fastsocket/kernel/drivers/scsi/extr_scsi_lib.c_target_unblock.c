
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_unblock ;
 scalar_t__ scsi_is_target_device (struct device*) ;
 int starget_for_each_device (int ,void*,int ) ;
 int to_scsi_target (struct device*) ;

__attribute__((used)) static int
target_unblock(struct device *dev, void *data)
{
 if (scsi_is_target_device(dev))
  starget_for_each_device(to_scsi_target(dev), data,
     device_unblock);
 return 0;
}
