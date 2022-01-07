
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct net_device {int name; int watchdog_timeo; int * netdev_ops; } ;
struct TYPE_10__ {int intr_interval; int intr_buff; struct net_device* netdev; struct usb_device* udev; int rx_pool_lock; int tl; } ;
typedef TYPE_1__ rtl8150_t ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INTBUFSIZE ;
 int RTL8150_TX_TIMEOUT ;
 int SET_ETHTOOL_OPS (struct net_device*,int *) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int alloc_all_urbs (TYPE_1__*) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_info (int *,char*,int ) ;
 int err (char*) ;
 int fill_skb_pool (TYPE_1__*) ;
 int free_all_urbs (TYPE_1__*) ;
 int free_netdev (struct net_device*) ;
 int free_skb_pool (TYPE_1__*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (int ) ;
 int kmalloc (int ,int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int ops ;
 scalar_t__ register_netdev (struct net_device*) ;
 int rtl8150_netdev_ops ;
 int rtl8150_reset (TYPE_1__*) ;
 int rx_fixup ;
 int set_ethernet_addr (TYPE_1__*) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int usb_set_intfdata (struct usb_interface*,TYPE_1__*) ;

__attribute__((used)) static int rtl8150_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 rtl8150_t *dev;
 struct net_device *netdev;

 netdev = alloc_etherdev(sizeof(rtl8150_t));
 if (!netdev) {
  err("Out of memory");
  return -ENOMEM;
 }

 dev = netdev_priv(netdev);

 dev->intr_buff = kmalloc(INTBUFSIZE, GFP_KERNEL);
 if (!dev->intr_buff) {
  free_netdev(netdev);
  return -ENOMEM;
 }

 tasklet_init(&dev->tl, rx_fixup, (unsigned long)dev);
 spin_lock_init(&dev->rx_pool_lock);

 dev->udev = udev;
 dev->netdev = netdev;
 netdev->netdev_ops = &rtl8150_netdev_ops;
 netdev->watchdog_timeo = RTL8150_TX_TIMEOUT;
 SET_ETHTOOL_OPS(netdev, &ops);
 dev->intr_interval = 100;

 if (!alloc_all_urbs(dev)) {
  err("out of memory");
  goto out;
 }
 if (!rtl8150_reset(dev)) {
  err("couldn't reset the device");
  goto out1;
 }
 fill_skb_pool(dev);
 set_ethernet_addr(dev);

 usb_set_intfdata(intf, dev);
 SET_NETDEV_DEV(netdev, &intf->dev);
 if (register_netdev(netdev) != 0) {
  err("couldn't register the device");
  goto out2;
 }

 dev_info(&intf->dev, "%s: rtl8150 is detected\n", netdev->name);

 return 0;

out2:
 usb_set_intfdata(intf, ((void*)0));
 free_skb_pool(dev);
out1:
 free_all_urbs(dev);
out:
 kfree(dev->intr_buff);
 free_netdev(netdev);
 return -EIO;
}
