
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int dummy; } ;


 struct net_device* alloc_netdev (int,char const*,int ) ;
 int ipoib_setup ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;

struct ipoib_dev_priv *ipoib_intf_alloc(const char *name)
{
 struct net_device *dev;

 dev = alloc_netdev((int) sizeof (struct ipoib_dev_priv), name,
      ipoib_setup);
 if (!dev)
  return ((void*)0);

 return netdev_priv(dev);
}
