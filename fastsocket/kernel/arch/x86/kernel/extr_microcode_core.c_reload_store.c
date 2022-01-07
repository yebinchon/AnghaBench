
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int id; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ cpu_online (int) ;
 int get_online_cpus () ;
 int put_online_cpus () ;
 int reload_for_cpu (int) ;
 unsigned long simple_strtoul (char const*,char**,int ) ;

__attribute__((used)) static ssize_t reload_store(struct sys_device *dev,
       struct sysdev_attribute *attr,
       const char *buf, size_t size)
{
 unsigned long val;
 int cpu = dev->id;
 int ret = 0;
 char *end;

 val = simple_strtoul(buf, &end, 0);
 if (end == buf)
  return -EINVAL;

 if (val == 1) {
  get_online_cpus();
  if (cpu_online(cpu))
   ret = reload_for_cpu(cpu);
  put_online_cpus();
 }

 if (!ret)
  ret = size;

 return ret;
}
