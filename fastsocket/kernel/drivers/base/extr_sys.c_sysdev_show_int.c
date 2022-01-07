
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_ext_attribute {scalar_t__ var; } ;
struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 struct sysdev_ext_attribute* to_ext_attr (struct sysdev_attribute*) ;

ssize_t sysdev_show_int(struct sys_device *sysdev,
     struct sysdev_attribute *attr,
     char *buf)
{
 struct sysdev_ext_attribute *ea = to_ext_attr(attr);
 return snprintf(buf, PAGE_SIZE, "%d\n", *(int *)(ea->var));
}
