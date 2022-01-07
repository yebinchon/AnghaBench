
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef int ssize_t ;


 int node_read_cpumap (struct sys_device*,int ,char*) ;

__attribute__((used)) static inline ssize_t node_read_cpumask(struct sys_device *dev,
    struct sysdev_attribute *attr, char *buf)
{
 return node_read_cpumap(dev, 0, buf);
}
