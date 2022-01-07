
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {unsigned int nfilters; unsigned int nservers; } ;
struct TYPE_4__ {TYPE_1__ mc5; } ;
struct adapter {int flags; TYPE_2__ params; int mc5; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 int FULL_INIT_DONE ;
 unsigned int MC5_MIN_TIDS ;
 struct port_info* netdev_priv (struct net_device*) ;
 unsigned int t3_mc5_size (int *) ;

__attribute__((used)) static ssize_t set_nservers(struct net_device *dev, unsigned int val)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adap = pi->adapter;

 if (adap->flags & FULL_INIT_DONE)
  return -EBUSY;
 if (val > t3_mc5_size(&adap->mc5) - adap->params.mc5.nfilters -
     MC5_MIN_TIDS)
  return -EINVAL;
 adap->params.mc5.nservers = val;
 return 0;
}
