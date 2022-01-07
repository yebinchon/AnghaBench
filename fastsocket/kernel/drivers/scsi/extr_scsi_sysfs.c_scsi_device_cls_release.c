
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_gendev; } ;
struct device {int dummy; } ;


 struct scsi_device* class_to_sdev (struct device*) ;
 int put_device (int *) ;

__attribute__((used)) static void scsi_device_cls_release(struct device *class_dev)
{
 struct scsi_device *sdev;

 sdev = class_to_sdev(class_dev);
 put_device(&sdev->sdev_gendev);
}
