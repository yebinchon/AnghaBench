
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int I2400M_MAX_MTU ;
 int dev_err (struct device*,char*,int,int) ;
 struct device* i2400m_dev (struct i2400m*) ;
 struct i2400m* net_dev_to_i2400m (struct net_device*) ;

__attribute__((used)) static
int i2400m_change_mtu(struct net_device *net_dev, int new_mtu)
{
 int result;
 struct i2400m *i2400m = net_dev_to_i2400m(net_dev);
 struct device *dev = i2400m_dev(i2400m);

 if (new_mtu >= I2400M_MAX_MTU) {
  dev_err(dev, "Cannot change MTU to %d (max is %d)\n",
   new_mtu, I2400M_MAX_MTU);
  result = -EINVAL;
 } else {
  net_dev->mtu = new_mtu;
  result = 0;
 }
 return result;
}
