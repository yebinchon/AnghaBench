
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; int dev; } ;
struct hso_net {TYPE_2__* mux_bulk_tx_urb; } ;
struct TYPE_4__ {int status; } ;


 int EINPROGRESS ;
 int dev_warn (int *,char*) ;
 struct hso_net* netdev_priv (struct net_device*) ;
 int usb_unlink_urb (TYPE_2__*) ;

__attribute__((used)) static void hso_net_tx_timeout(struct net_device *net)
{
 struct hso_net *odev = netdev_priv(net);

 if (!odev)
  return;


 dev_warn(&net->dev, "Tx timed out.\n");


 if (odev->mux_bulk_tx_urb
     && (odev->mux_bulk_tx_urb->status == -EINPROGRESS))
  usb_unlink_urb(odev->mux_bulk_tx_urb);


 net->stats.tx_errors++;
}
