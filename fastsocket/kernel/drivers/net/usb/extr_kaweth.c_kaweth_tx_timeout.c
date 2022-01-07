
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int trans_start; int name; int dev; } ;
struct TYPE_2__ {int tx_errors; } ;
struct kaweth_device {int tx_urb; TYPE_1__ stats; } ;


 int dev_warn (int *,char*,int ) ;
 int jiffies ;
 struct kaweth_device* netdev_priv (struct net_device*) ;
 int usb_unlink_urb (int ) ;

__attribute__((used)) static void kaweth_tx_timeout(struct net_device *net)
{
 struct kaweth_device *kaweth = netdev_priv(net);

 dev_warn(&net->dev, "%s: Tx timed out. Resetting.\n", net->name);
 kaweth->stats.tx_errors++;
 net->trans_start = jiffies;

 usb_unlink_urb(kaweth->tx_urb);
}
