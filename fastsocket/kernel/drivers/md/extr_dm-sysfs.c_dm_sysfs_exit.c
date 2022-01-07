
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;


 int dm_kobject (struct mapped_device*) ;
 int kobject_put (int ) ;

void dm_sysfs_exit(struct mapped_device *md)
{
 kobject_put(dm_kobject(md));
}
