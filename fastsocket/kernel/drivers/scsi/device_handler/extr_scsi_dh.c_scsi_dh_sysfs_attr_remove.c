
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_gendev; } ;
struct device {int dummy; } ;


 int device_remove_file (int *,int *) ;
 int scsi_dh_state_attr ;
 int scsi_is_sdev_device (struct device*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int scsi_dh_sysfs_attr_remove(struct device *dev, void *data)
{
 struct scsi_device *sdev;

 if (!scsi_is_sdev_device(dev))
  return 0;

 sdev = to_scsi_device(dev);

 device_remove_file(&sdev->sdev_gendev,
      &scsi_dh_state_attr);

 return 0;
}
