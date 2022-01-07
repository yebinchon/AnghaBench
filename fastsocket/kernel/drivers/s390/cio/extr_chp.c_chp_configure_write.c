
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct channel_path {int chpid; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int cfg_wait_idle () ;
 int chp_cfg_schedule (int ,int) ;
 int sscanf (char const*,char*,int*,char*) ;
 struct channel_path* to_channelpath (struct device*) ;

__attribute__((used)) static ssize_t chp_configure_write(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct channel_path *cp;
 int val;
 char delim;

 if (sscanf(buf, "%d %c", &val, &delim) != 1)
  return -EINVAL;
 if (val != 0 && val != 1)
  return -EINVAL;
 cp = to_channelpath(dev);
 chp_cfg_schedule(cp->chpid, val);
 cfg_wait_idle();

 return count;
}
