
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int ipoib_set_mode (struct net_device*,char const*) ;
 size_t restart_syscall () ;
 int rtnl_trylock () ;
 int rtnl_unlock () ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t set_mode(struct device *d, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct net_device *dev = to_net_dev(d);
 int ret;

 if (!rtnl_trylock())
  return restart_syscall();

 ret = ipoib_set_mode(dev, buf);

 rtnl_unlock();

 if (!ret)
  return count;

 return ret;
}
