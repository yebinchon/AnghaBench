
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ems_usb {int open_time; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;



 int EINVAL ;
 int EOPNOTSUPP ;
 int SJA1000_MOD_NORMAL ;
 int dev_warn (int ,char*) ;
 int ems_usb_write_mode (struct ems_usb*,int ) ;
 struct ems_usb* netdev_priv (struct net_device*) ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static int ems_usb_set_mode(struct net_device *netdev, enum can_mode mode)
{
 struct ems_usb *dev = netdev_priv(netdev);

 if (!dev->open_time)
  return -EINVAL;

 switch (mode) {
 case 128:
  if (ems_usb_write_mode(dev, SJA1000_MOD_NORMAL))
   dev_warn(netdev->dev.parent, "couldn't start device");

  if (netif_queue_stopped(netdev))
   netif_wake_queue(netdev);
  break;

 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
