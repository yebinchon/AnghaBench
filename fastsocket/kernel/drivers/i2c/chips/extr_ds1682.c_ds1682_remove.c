
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ds1682_eeprom_attr ;
 int ds1682_group ;
 int sysfs_remove_bin_file (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int ds1682_remove(struct i2c_client *client)
{
 sysfs_remove_bin_file(&client->dev.kobj, &ds1682_eeprom_attr);
 sysfs_remove_group(&client->dev.kobj, &ds1682_group);
 return 0;
}
