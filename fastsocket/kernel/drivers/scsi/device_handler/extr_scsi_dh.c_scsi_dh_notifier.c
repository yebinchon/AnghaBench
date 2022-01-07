
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device_handler {int dummy; } ;
struct scsi_device {int dummy; } ;
struct notifier_block {int dummy; } ;
struct device {int dummy; } ;


 unsigned long BUS_NOTIFY_ADD_DEVICE ;
 unsigned long BUS_NOTIFY_DEL_DEVICE ;
 int device_create_file (struct device*,int *) ;
 struct scsi_device_handler* device_handler_match (int *,struct scsi_device*) ;
 int device_remove_file (struct device*,int *) ;
 int scsi_dh_handler_attach (struct scsi_device*,struct scsi_device_handler*) ;
 int scsi_dh_handler_detach (struct scsi_device*,int *) ;
 int scsi_dh_state_attr ;
 int scsi_is_sdev_device (struct device*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int scsi_dh_notifier(struct notifier_block *nb,
       unsigned long action, void *data)
{
 struct device *dev = data;
 struct scsi_device *sdev;
 int err = 0;
 struct scsi_device_handler *devinfo = ((void*)0);

 if (!scsi_is_sdev_device(dev))
  return 0;

 sdev = to_scsi_device(dev);

 if (action == BUS_NOTIFY_ADD_DEVICE) {
  err = device_create_file(dev, &scsi_dh_state_attr);

  devinfo = device_handler_match(((void*)0), sdev);
  if (devinfo)
   err = scsi_dh_handler_attach(sdev, devinfo);
 } else if (action == BUS_NOTIFY_DEL_DEVICE) {
  device_remove_file(dev, &scsi_dh_state_attr);
  scsi_dh_handler_detach(sdev, ((void*)0));
 }
 return err;
}
