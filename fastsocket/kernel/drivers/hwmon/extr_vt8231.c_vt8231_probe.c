
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vt8231_data {char* name; int hwmon_dev; int uch_config; int update_lock; scalar_t__ addr; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_7__ {int kobj; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_6__ {TYPE_1__ driver; } ;


 int ARRAY_SIZE (int *) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 scalar_t__ ISTEMP (int,int ) ;
 scalar_t__ ISVOLT (int,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int VT8231_EXTENT ;
 int VT8231_REG_UCH_CONFIG ;
 int dev_err (TYPE_3__*,char*,unsigned long,unsigned long) ;
 int hwmon_device_register (TYPE_3__*) ;
 int kfree (struct vt8231_data*) ;
 struct vt8231_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct vt8231_data*) ;
 int release_region (scalar_t__,int ) ;
 int request_region (scalar_t__,int ,int ) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 TYPE_2__ vt8231_driver ;
 int vt8231_group ;
 int * vt8231_group_temps ;
 int * vt8231_group_volts ;
 int vt8231_init_device (struct vt8231_data*) ;
 int vt8231_read_value (struct vt8231_data*,int ) ;

__attribute__((used)) static int vt8231_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct vt8231_data *data;
 int err = 0, i;


 res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 if (!request_region(res->start, VT8231_EXTENT,
       vt8231_driver.driver.name)) {
  dev_err(&pdev->dev, "Region 0x%lx-0x%lx already in use!\n",
   (unsigned long)res->start, (unsigned long)res->end);
  return -ENODEV;
 }

 if (!(data = kzalloc(sizeof(struct vt8231_data), GFP_KERNEL))) {
  err = -ENOMEM;
  goto exit_release;
 }

 platform_set_drvdata(pdev, data);
 data->addr = res->start;
 data->name = "vt8231";

 mutex_init(&data->update_lock);
 vt8231_init_device(data);


 if ((err = sysfs_create_group(&pdev->dev.kobj, &vt8231_group)))
  goto exit_free;


 data->uch_config = vt8231_read_value(data, VT8231_REG_UCH_CONFIG);

 for (i = 0; i < ARRAY_SIZE(vt8231_group_temps); i++) {
  if (ISTEMP(i, data->uch_config)) {
   if ((err = sysfs_create_group(&pdev->dev.kobj,
     &vt8231_group_temps[i])))
    goto exit_remove_files;
  }
 }

 for (i = 0; i < ARRAY_SIZE(vt8231_group_volts); i++) {
  if (ISVOLT(i, data->uch_config)) {
   if ((err = sysfs_create_group(&pdev->dev.kobj,
     &vt8231_group_volts[i])))
    goto exit_remove_files;
  }
 }

 data->hwmon_dev = hwmon_device_register(&pdev->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove_files;
 }
 return 0;

exit_remove_files:
 for (i = 0; i < ARRAY_SIZE(vt8231_group_volts); i++)
  sysfs_remove_group(&pdev->dev.kobj, &vt8231_group_volts[i]);

 for (i = 0; i < ARRAY_SIZE(vt8231_group_temps); i++)
  sysfs_remove_group(&pdev->dev.kobj, &vt8231_group_temps[i]);

 sysfs_remove_group(&pdev->dev.kobj, &vt8231_group);

exit_free:
 platform_set_drvdata(pdev, ((void*)0));
 kfree(data);

exit_release:
 release_region(res->start, VT8231_EXTENT);
 return err;
}
