
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aoedev {int gd; } ;
struct TYPE_2__ {int kobj; } ;


 int attr_group ;
 TYPE_1__* disk_to_dev (int ) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int
aoedisk_add_sysfs(struct aoedev *d)
{
 return sysfs_create_group(&disk_to_dev(d->gd)->kobj, &attr_group);
}
