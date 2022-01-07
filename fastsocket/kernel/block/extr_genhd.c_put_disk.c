
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {int dummy; } ;
struct TYPE_2__ {int kobj; } ;


 TYPE_1__* disk_to_dev (struct gendisk*) ;
 int kobject_put (int *) ;

void put_disk(struct gendisk *disk)
{
 if (disk)
  kobject_put(&disk_to_dev(disk)->kobj);
}
