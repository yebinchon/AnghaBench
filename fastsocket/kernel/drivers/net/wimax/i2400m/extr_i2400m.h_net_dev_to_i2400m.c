
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct i2400m {int dummy; } ;


 int netdev_priv (struct net_device*) ;
 struct i2400m* wimax_dev_to_i2400m (int ) ;

__attribute__((used)) static inline
struct i2400m *net_dev_to_i2400m(struct net_device *net_dev)
{
 return wimax_dev_to_i2400m(netdev_priv(net_dev));
}
