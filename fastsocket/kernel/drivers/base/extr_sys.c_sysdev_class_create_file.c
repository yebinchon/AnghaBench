
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysdev_class_attribute {int attr; } ;
struct TYPE_2__ {int kobj; } ;
struct sysdev_class {TYPE_1__ kset; } ;


 int sysfs_create_file (int *,int *) ;

int sysdev_class_create_file(struct sysdev_class *c,
        struct sysdev_class_attribute *a)
{
 return sysfs_create_file(&c->kset.kobj, &a->attr);
}
