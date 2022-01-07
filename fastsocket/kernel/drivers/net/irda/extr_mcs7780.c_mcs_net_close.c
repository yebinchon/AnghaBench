
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int skb; } ;
struct mcs_cb {int * irlap; int tx_urb; int rx_urb; TYPE_1__ rx_buff; } ;


 int irlap_close (int *) ;
 int kfree_skb (int ) ;
 struct mcs_cb* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int mcs_net_close(struct net_device *netdev)
{
 int ret = 0;
 struct mcs_cb *mcs = netdev_priv(netdev);


 netif_stop_queue(netdev);

 kfree_skb(mcs->rx_buff.skb);


 usb_kill_urb(mcs->rx_urb);
 usb_free_urb(mcs->rx_urb);
 usb_kill_urb(mcs->tx_urb);
 usb_free_urb(mcs->tx_urb);


 if (mcs->irlap)
  irlap_close(mcs->irlap);

 mcs->irlap = ((void*)0);
 return ret;
}
