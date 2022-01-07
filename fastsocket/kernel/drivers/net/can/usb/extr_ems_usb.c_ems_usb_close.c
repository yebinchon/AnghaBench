
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ems_usb {scalar_t__ open_time; } ;


 int SJA1000_MOD_RM ;
 int close_candev (struct net_device*) ;
 int dev_warn (int ,char*) ;
 scalar_t__ ems_usb_write_mode (struct ems_usb*,int ) ;
 struct ems_usb* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int unlink_all_urbs (struct ems_usb*) ;

__attribute__((used)) static int ems_usb_close(struct net_device *netdev)
{
 struct ems_usb *dev = netdev_priv(netdev);


 unlink_all_urbs(dev);

 netif_stop_queue(netdev);


 if (ems_usb_write_mode(dev, SJA1000_MOD_RM))
  dev_warn(netdev->dev.parent, "couldn't stop device");

 close_candev(netdev);

 dev->open_time = 0;

 return 0;
}
