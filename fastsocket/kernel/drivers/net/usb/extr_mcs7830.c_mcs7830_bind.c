
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int phy_id_mask; int reg_num_mask; int phy_id; struct net_device* dev; int mdio_write; int mdio_read; } ;
struct usbnet {TYPE_1__ mii; scalar_t__ rx_urb_size; struct net_device* net; } ;
struct usb_interface {int dummy; } ;
struct net_device {scalar_t__ dev_addr; int * netdev_ops; int * ethtool_ops; } ;


 scalar_t__ ETH_FRAME_LEN ;
 int mcs7830_ethtool_ops ;
 int mcs7830_init_dev (struct usbnet*) ;
 int mcs7830_mdio_read ;
 int mcs7830_mdio_write ;
 int mcs7830_netdev_ops ;
 int mcs7830_set_multicast (struct net_device*) ;
 int usbnet_get_endpoints (struct usbnet*,struct usb_interface*) ;

__attribute__((used)) static int mcs7830_bind(struct usbnet *dev, struct usb_interface *udev)
{
 struct net_device *net = dev->net;
 int ret;

 ret = mcs7830_init_dev(dev);
 if (ret)
  goto out;

 net->ethtool_ops = &mcs7830_ethtool_ops;
 net->netdev_ops = &mcs7830_netdev_ops;
 mcs7830_set_multicast(net);


 dev->rx_urb_size = ETH_FRAME_LEN + 1;

 dev->mii.mdio_read = mcs7830_mdio_read;
 dev->mii.mdio_write = mcs7830_mdio_write;
 dev->mii.dev = net;
 dev->mii.phy_id_mask = 0x3f;
 dev->mii.reg_num_mask = 0x1f;
 dev->mii.phy_id = *((u8 *) net->dev_addr + 1);

 ret = usbnet_get_endpoints(dev, udev);
out:
 return ret;
}
