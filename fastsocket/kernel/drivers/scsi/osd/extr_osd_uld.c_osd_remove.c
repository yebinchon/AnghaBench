
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ owner; } ;
struct TYPE_3__ {struct scsi_device* scsi_device; } ;
struct osd_uld_device {TYPE_2__ cdev; int minor; scalar_t__ class_member; TYPE_1__ od; } ;
struct device {int dummy; } ;


 int MKDEV (int ,int ) ;
 int OSD_ERR (char*,struct device*,struct osd_uld_device*,struct scsi_device*,struct scsi_device*) ;
 int SCSI_OSD_MAJOR ;
 int __uld_put (struct osd_uld_device*) ;
 int cdev_del (TYPE_2__*) ;
 struct osd_uld_device* dev_get_drvdata (struct device*) ;
 int device_destroy (int ,int ) ;
 int osd_sysfs_class ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int osd_remove(struct device *dev)
{
 struct scsi_device *scsi_device = to_scsi_device(dev);
 struct osd_uld_device *oud = dev_get_drvdata(dev);

 if (!oud || (oud->od.scsi_device != scsi_device)) {
  OSD_ERR("Half cooked osd-device %p,%p || %p!=%p",
   dev, oud, oud ? oud->od.scsi_device : ((void*)0),
   scsi_device);
 }

 if (oud->class_member)
  device_destroy(osd_sysfs_class,
          MKDEV(SCSI_OSD_MAJOR, oud->minor));






 if (oud->cdev.owner)
  cdev_del(&oud->cdev);

 __uld_put(oud);
 return 0;
}
