
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct ath5k_hw {struct device* dev; } ;


 int ath5k_attribute_group_ani ;
 int sysfs_remove_group (int *,int *) ;

void
ath5k_sysfs_unregister(struct ath5k_hw *ah)
{
 struct device *dev = ah->dev;

 sysfs_remove_group(&dev->kobj, &ath5k_attribute_group_ani);
}
