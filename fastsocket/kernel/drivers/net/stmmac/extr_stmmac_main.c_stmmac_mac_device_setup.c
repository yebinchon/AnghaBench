
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {scalar_t__ wolenabled; int wolopts; struct mac_device_info* mac_type; scalar_t__ is_gmac; } ;
struct net_device {unsigned long base_addr; } ;
struct TYPE_2__ {scalar_t__ pmt; } ;
struct mac_device_info {TYPE_1__ hw; } ;


 int ENOMEM ;
 scalar_t__ PMT_SUPPORTED ;
 int WAKE_MAGIC ;
 struct mac_device_info* gmac_setup (unsigned long) ;
 struct mac_device_info* mac100_setup (unsigned long) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int stmmac_mac_device_setup(struct net_device *dev)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 unsigned long ioaddr = dev->base_addr;

 struct mac_device_info *device;

 if (priv->is_gmac)
  device = gmac_setup(ioaddr);
 else
  device = mac100_setup(ioaddr);

 if (!device)
  return -ENOMEM;

 priv->mac_type = device;

 priv->wolenabled = priv->mac_type->hw.pmt;
 if (priv->wolenabled == PMT_SUPPORTED)
  priv->wolopts = WAKE_MAGIC;

 return 0;
}
