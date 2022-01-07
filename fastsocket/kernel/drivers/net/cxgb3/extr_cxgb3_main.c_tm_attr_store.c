
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {struct adapter* adapter; } ;
struct device {int dummy; } ;
struct adapter {int dummy; } ;
typedef size_t ssize_t ;


 int CAP_NET_ADMIN ;
 size_t EINVAL ;
 size_t EPERM ;
 int capable (int ) ;
 struct port_info* netdev_priv (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 unsigned int simple_strtoul (char const*,char**,int ) ;
 size_t t3_config_sched (struct adapter*,unsigned int,int) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t tm_attr_store(struct device *d,
        const char *buf, size_t len, int sched)
{
 struct port_info *pi = netdev_priv(to_net_dev(d));
 struct adapter *adap = pi->adapter;
 unsigned int val;
 char *endp;
 ssize_t ret;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 val = simple_strtoul(buf, &endp, 0);
 if (endp == buf || val > 10000000)
  return -EINVAL;

 rtnl_lock();
 ret = t3_config_sched(adap, val, sched);
 if (!ret)
  ret = len;
 rtnl_unlock();
 return ret;
}
