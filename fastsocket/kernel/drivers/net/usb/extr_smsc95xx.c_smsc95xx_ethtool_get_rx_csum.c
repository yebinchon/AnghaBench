
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {scalar_t__* data; } ;
struct smsc95xx_priv {int use_rx_csum; } ;
struct net_device {int dummy; } ;


 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 smsc95xx_ethtool_get_rx_csum(struct net_device *netdev)
{
 struct usbnet *dev = netdev_priv(netdev);
 struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);

 return pdata->use_rx_csum;
}
