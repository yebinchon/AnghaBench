
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int attr; } ;
struct sys_device {int kobj; } ;


 int sysfs_remove_file (int *,int *) ;

void sysdev_remove_file(struct sys_device *s, struct sysdev_attribute *a)
{
 sysfs_remove_file(&s->kobj, &a->attr);
}
