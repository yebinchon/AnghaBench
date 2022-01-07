
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct device {int parent; } ;
struct class_interface {int dummy; } ;


 int scsi_device_enclosure (struct scsi_device*) ;
 int ses_intf_remove_component (struct scsi_device*) ;
 int ses_intf_remove_enclosure (struct scsi_device*) ;
 struct scsi_device* to_scsi_device (int ) ;

__attribute__((used)) static void ses_intf_remove(struct device *cdev,
       struct class_interface *intf)
{
 struct scsi_device *sdev = to_scsi_device(cdev->parent);

 if (!scsi_device_enclosure(sdev))
  ses_intf_remove_component(sdev);
 else
  ses_intf_remove_enclosure(sdev);
}
