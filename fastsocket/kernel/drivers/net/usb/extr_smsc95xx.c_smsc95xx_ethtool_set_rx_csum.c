
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {scalar_t__* data; } ;
struct smsc95xx_priv {int use_rx_csum; } ;
struct net_device {int dummy; } ;


 struct usbnet* netdev_priv (struct net_device*) ;
 int smsc95xx_set_csums (struct usbnet*) ;

__attribute__((used)) static int smsc95xx_ethtool_set_rx_csum(struct net_device *netdev, u32 val)
{
 struct usbnet *dev = netdev_priv(netdev);
 struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);

 pdata->use_rx_csum = !!val;

 return smsc95xx_set_csums(dev);
}
