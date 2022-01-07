
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
typedef int dev_t ;


 struct kobject* get_disk (int ) ;
 int z2ram_gendisk ;

__attribute__((used)) static struct kobject *z2_find(dev_t dev, int *part, void *data)
{
 *part = 0;
 return get_disk(z2ram_gendisk);
}
