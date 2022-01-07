
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int id; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EIO ;
 unsigned long run_on_cpu (int ,int ,unsigned long) ;
 int sscanf (char const*,char*,unsigned long*) ;
 int write_mmustat_enable ;

__attribute__((used)) static ssize_t store_mmustat_enable(struct sys_device *s,
   struct sysdev_attribute *attr, const char *buf,
   size_t count)
{
 unsigned long val, err;
 int ret = sscanf(buf, "%ld", &val);

 if (ret != 1)
  return -EINVAL;

 err = run_on_cpu(s->id, write_mmustat_enable, val);
 if (err)
  return -EIO;

 return count;
}
