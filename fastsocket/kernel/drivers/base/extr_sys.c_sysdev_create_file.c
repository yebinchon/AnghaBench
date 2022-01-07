
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int attr; } ;
struct sys_device {int kobj; } ;


 int sysfs_create_file (int *,int *) ;

int sysdev_create_file(struct sys_device *s, struct sysdev_attribute *a)
{
 return sysfs_create_file(&s->kobj, &a->attr);
}
