
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {size_t id; } ;
typedef int ssize_t ;


 int* __cpu_logical_map ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_cpu_address(struct sys_device *dev,
    struct sysdev_attribute *attr, char *buf)
{
 return sprintf(buf, "%d\n", __cpu_logical_map[dev->id]);
}
