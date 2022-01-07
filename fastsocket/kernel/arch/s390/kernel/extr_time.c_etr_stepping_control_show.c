
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int e0; int e1; } ;


 TYPE_1__ etr_eacr ;
 struct sys_device etr_port0_dev ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t etr_stepping_control_show(struct sys_device *dev,
     struct sysdev_attribute *attr,
     char *buf)
{
 return sprintf(buf, "%i\n", (dev == &etr_port0_dev) ?
         etr_eacr.e0 : etr_eacr.e1);
}
