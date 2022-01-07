
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct gendisk {int major; int first_minor; int queue; TYPE_1__* private_data; TYPE_3__* driverfs_dev; int disk_name; int * fops; } ;
struct TYPE_7__ {int release; } ;
struct TYPE_6__ {int id; TYPE_3__ dev; int name; } ;
struct TYPE_5__ {int queue; TYPE_2__ pdev; } ;


 int DRIVER_NAME ;
 int ENOMEM ;
 int UBD_MAJOR ;
 int UBD_SHIFT ;
 int add_disk (struct gendisk*) ;
 struct gendisk* alloc_disk (int) ;
 int dev_set_drvdata (TYPE_3__*,TYPE_1__*) ;
 int platform_device_register (TYPE_2__*) ;
 int set_capacity (struct gendisk*,int) ;
 int sprintf (int ,char*,int) ;
 int ubd_blops ;
 int ubd_device_release ;
 TYPE_1__* ubd_devs ;

__attribute__((used)) static int ubd_disk_register(int major, u64 size, int unit,
        struct gendisk **disk_out)
{
 struct gendisk *disk;

 disk = alloc_disk(1 << UBD_SHIFT);
 if(disk == ((void*)0))
  return -ENOMEM;

 disk->major = major;
 disk->first_minor = unit << UBD_SHIFT;
 disk->fops = &ubd_blops;
 set_capacity(disk, size / 512);
 if (major == UBD_MAJOR)
  sprintf(disk->disk_name, "ubd%c", 'a' + unit);
 else
  sprintf(disk->disk_name, "ubd_fake%d", unit);


 if (major == UBD_MAJOR) {
  ubd_devs[unit].pdev.id = unit;
  ubd_devs[unit].pdev.name = DRIVER_NAME;
  ubd_devs[unit].pdev.dev.release = ubd_device_release;
  dev_set_drvdata(&ubd_devs[unit].pdev.dev, &ubd_devs[unit]);
  platform_device_register(&ubd_devs[unit].pdev);
  disk->driverfs_dev = &ubd_devs[unit].pdev.dev;
 }

 disk->private_data = &ubd_devs[unit];
 disk->queue = ubd_devs[unit].queue;
 add_disk(disk);

 *disk_out = disk;
 return 0;
}
