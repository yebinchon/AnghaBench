
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef size_t ssize_t ;


 int CAP_NET_ADMIN ;
 size_t EINVAL ;
 size_t EPERM ;
 int capable (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 unsigned int simple_strtoul (char const*,char**,int ) ;
 size_t stub1 (struct net_device*,unsigned int) ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t attr_store(struct device *d,
     const char *buf, size_t len,
     ssize_t(*set) (struct net_device *, unsigned int),
     unsigned int min_val, unsigned int max_val)
{
 char *endp;
 ssize_t ret;
 unsigned int val;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 val = simple_strtoul(buf, &endp, 0);
 if (endp == buf || val < min_val || val > max_val)
  return -EINVAL;

 rtnl_lock();
 ret = (*set) (to_net_dev(d), val);
 if (!ret)
  ret = len;
 rtnl_unlock();
 return ret;
}
