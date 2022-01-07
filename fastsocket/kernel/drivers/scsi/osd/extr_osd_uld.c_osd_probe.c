
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_device {scalar_t__ type; } ;
struct TYPE_4__ {int kobj; int owner; } ;
struct osd_uld_device {int minor; TYPE_1__ cdev; struct device* class_member; int od; struct gendisk* disk; int kref; } ;
struct gendisk {int first_minor; int disk_name; int major; } ;
struct device {int dummy; } ;


 int EAGAIN ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct device*) ;
 int MKDEV (int ,int) ;
 int OSD_ERR (char*) ;
 int OSD_INFO (char*,int ) ;
 int PTR_ERR (struct device*) ;
 int SCSI_OSD_MAJOR ;
 int SCSI_OSD_MAX_MINOR ;
 int THIS_MODULE ;
 scalar_t__ TYPE_OSD ;
 int __detect_osd (struct osd_uld_device*) ;
 struct gendisk* alloc_disk (int) ;
 int cdev_add (TYPE_1__*,int ,int) ;
 int cdev_del (TYPE_1__*) ;
 int cdev_init (TYPE_1__*,int *) ;
 int dev_set_drvdata (struct device*,struct osd_uld_device*) ;
 struct device* device_create (int ,struct device*,int ,char*,int ) ;
 int ida_get_new (int *,int*) ;
 int ida_pre_get (int *,int ) ;
 int ida_remove (int *,int) ;
 int kfree (struct osd_uld_device*) ;
 int kobject_get (int *) ;
 int kref_init (int *) ;
 struct osd_uld_device* kzalloc (int,int ) ;
 int osd_dev_init (int *,struct scsi_device*) ;
 int osd_fops ;
 int osd_minor_ida ;
 int osd_sysfs_class ;
 int put_disk (struct gendisk*) ;
 int scsi_device_get (struct scsi_device*) ;
 int scsi_device_put (struct scsi_device*) ;
 int sprintf (int ,char*,int) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int osd_probe(struct device *dev)
{
 struct scsi_device *scsi_device = to_scsi_device(dev);
 struct gendisk *disk;
 struct osd_uld_device *oud;
 int minor;
 int error;

 if (scsi_device->type != TYPE_OSD)
  return -ENODEV;

 do {
  if (!ida_pre_get(&osd_minor_ida, GFP_KERNEL))
   return -ENODEV;

  error = ida_get_new(&osd_minor_ida, &minor);
 } while (error == -EAGAIN);

 if (error)
  return error;
 if (minor >= SCSI_OSD_MAX_MINOR) {
  error = -EBUSY;
  goto err_retract_minor;
 }

 error = -ENOMEM;
 oud = kzalloc(sizeof(*oud), GFP_KERNEL);
 if (((void*)0) == oud)
  goto err_retract_minor;

 kref_init(&oud->kref);
 dev_set_drvdata(dev, oud);
 oud->minor = minor;



 disk = alloc_disk(1);
 if (!disk) {
  OSD_ERR("alloc_disk failed\n");
  goto err_free_osd;
 }
 disk->major = SCSI_OSD_MAJOR;
 disk->first_minor = oud->minor;
 sprintf(disk->disk_name, "osd%d", oud->minor);
 oud->disk = disk;




 scsi_device_get(scsi_device);
 osd_dev_init(&oud->od, scsi_device);


 error = __detect_osd(oud);
 if (error) {
  OSD_ERR("osd detection failed, non-compatible OSD device\n");
  goto err_put_disk;
 }


 cdev_init(&oud->cdev, &osd_fops);
 oud->cdev.owner = THIS_MODULE;
 error = cdev_add(&oud->cdev,
    MKDEV(SCSI_OSD_MAJOR, oud->minor), 1);
 if (error) {
  OSD_ERR("cdev_add failed\n");
  goto err_put_disk;
 }
 kobject_get(&oud->cdev.kobj);


 oud->class_member = device_create(osd_sysfs_class, dev,
  MKDEV(SCSI_OSD_MAJOR, oud->minor), "%s", disk->disk_name);
 if (IS_ERR(oud->class_member)) {
  OSD_ERR("class_device_create failed\n");
  error = PTR_ERR(oud->class_member);
  goto err_put_cdev;
 }

 dev_set_drvdata(oud->class_member, oud);

 OSD_INFO("osd_probe %s\n", disk->disk_name);
 return 0;

err_put_cdev:
 cdev_del(&oud->cdev);
err_put_disk:
 scsi_device_put(scsi_device);
 put_disk(disk);
err_free_osd:
 dev_set_drvdata(dev, ((void*)0));
 kfree(oud);
err_retract_minor:
 ida_remove(&osd_minor_ida, minor);
 return error;
}
