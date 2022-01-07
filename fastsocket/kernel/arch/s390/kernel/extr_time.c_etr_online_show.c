
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef int ssize_t ;


 struct sys_device etr_port0_dev ;
 unsigned int etr_port0_online ;
 unsigned int etr_port1_online ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static ssize_t etr_online_show(struct sys_device *dev,
    struct sysdev_attribute *attr,
    char *buf)
{
 unsigned int online;

 online = (dev == &etr_port0_dev) ? etr_port0_online : etr_port1_online;
 return sprintf(buf, "%i\n", online);
}
