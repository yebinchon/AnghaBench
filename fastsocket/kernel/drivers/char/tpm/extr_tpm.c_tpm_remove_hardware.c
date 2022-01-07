
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attr_group; int miscdev; } ;
struct tpm_chip {int dev; int bios_dir; TYPE_1__ vendor; int list; } ;
struct device {int kobj; } ;


 int dev_err (struct device*,char*) ;
 struct tpm_chip* dev_get_drvdata (struct device*) ;
 int driver_lock ;
 int list_del_rcu (int *) ;
 int misc_deregister (int *) ;
 int put_device (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;
 int sysfs_remove_group (int *,int ) ;
 int tpm_bios_log_teardown (int ) ;
 int tpm_remove_ppi (int *) ;

void tpm_remove_hardware(struct device *dev)
{
 struct tpm_chip *chip = dev_get_drvdata(dev);

 if (chip == ((void*)0)) {
  dev_err(dev, "No device data found\n");
  return;
 }

 spin_lock(&driver_lock);
 list_del_rcu(&chip->list);
 spin_unlock(&driver_lock);
 synchronize_rcu();

 misc_deregister(&chip->vendor.miscdev);
 sysfs_remove_group(&dev->kobj, chip->vendor.attr_group);
 tpm_remove_ppi(&dev->kobj);
 tpm_bios_log_teardown(chip->bios_dir);


 put_device(chip->dev);
}
