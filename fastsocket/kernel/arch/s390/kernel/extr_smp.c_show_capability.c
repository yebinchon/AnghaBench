
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef int ssize_t ;


 int get_cpu_capability (unsigned int*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static ssize_t show_capability(struct sys_device *dev,
    struct sysdev_attribute *attr, char *buf)
{
 unsigned int capability;
 int rc;

 rc = get_cpu_capability(&capability);
 if (rc)
  return rc;
 return sprintf(buf, "%u\n", capability);
}
