
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device_handler {int dummy; } ;
struct scsi_device {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ device_handler_match (struct scsi_device_handler*,struct scsi_device*) ;
 int get_device (struct device*) ;
 int put_device (struct device*) ;
 int scsi_dh_handler_attach (struct scsi_device*,struct scsi_device_handler*) ;
 int scsi_is_sdev_device (struct device*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int scsi_dh_notifier_add(struct device *dev, void *data)
{
 struct scsi_device_handler *scsi_dh = data;
 struct scsi_device *sdev;

 if (!scsi_is_sdev_device(dev))
  return 0;

 if (!get_device(dev))
  return 0;

 sdev = to_scsi_device(dev);

 if (device_handler_match(scsi_dh, sdev))
  scsi_dh_handler_attach(sdev, scsi_dh);

 put_device(dev);

 return 0;
}
