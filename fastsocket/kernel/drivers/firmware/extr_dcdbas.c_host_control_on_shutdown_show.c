
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int host_control_on_shutdown ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t host_control_on_shutdown_show(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 return sprintf(buf, "%u\n", host_control_on_shutdown);
}
