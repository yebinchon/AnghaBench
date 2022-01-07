
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zd1201 {int tx_urb; TYPE_1__* usb; } ;
struct TYPE_4__ {int tx_errors; } ;
struct net_device {int trans_start; TYPE_2__ stats; int name; } ;
struct TYPE_3__ {int dev; } ;


 int dev_warn (int *,char*,int ) ;
 int jiffies ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int usb_unlink_urb (int ) ;

__attribute__((used)) static void zd1201_tx_timeout(struct net_device *dev)
{
 struct zd1201 *zd = netdev_priv(dev);

 if (!zd)
  return;
 dev_warn(&zd->usb->dev, "%s: TX timeout, shooting down urb\n",
     dev->name);
 usb_unlink_urb(zd->tx_urb);
 dev->stats.tx_errors++;

 dev->trans_start = jiffies;
}
