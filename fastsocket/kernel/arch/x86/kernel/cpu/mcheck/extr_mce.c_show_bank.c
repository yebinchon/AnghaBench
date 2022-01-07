
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int ctl; } ;


 TYPE_1__* attr_to_bank (struct sysdev_attribute*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t show_bank(struct sys_device *s, struct sysdev_attribute *attr,
    char *buf)
{
 return sprintf(buf, "%llx\n", attr_to_bank(attr)->ctl);
}
