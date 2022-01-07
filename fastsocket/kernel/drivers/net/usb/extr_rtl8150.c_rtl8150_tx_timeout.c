
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; int dev; } ;
struct TYPE_5__ {int tx_urb; } ;
typedef TYPE_2__ rtl8150_t ;


 int dev_warn (int *,char*) ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 int usb_unlink_urb (int ) ;

__attribute__((used)) static void rtl8150_tx_timeout(struct net_device *netdev)
{
 rtl8150_t *dev = netdev_priv(netdev);
 dev_warn(&netdev->dev, "Tx timeout.\n");
 usb_unlink_urb(dev->tx_urb);
 netdev->stats.tx_errors++;
}
