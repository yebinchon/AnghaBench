
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int state; int in_frame; int * head; int * skb; } ;
struct ksdazzle_cb {int * irlap; scalar_t__ receiving; TYPE_1__ rx_unwrap_buff; int * rx_urb; int * speed_urb; int * tx_urb; } ;


 int FALSE ;
 int OUTSIDE_FRAME ;
 int irlap_close (int *) ;
 int kfree_skb (int *) ;
 struct ksdazzle_cb* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;

__attribute__((used)) static int ksdazzle_net_close(struct net_device *netdev)
{
 struct ksdazzle_cb *kingsun = netdev_priv(netdev);


 netif_stop_queue(netdev);


 usb_kill_urb(kingsun->tx_urb);
 usb_free_urb(kingsun->tx_urb);
 kingsun->tx_urb = ((void*)0);

 usb_kill_urb(kingsun->speed_urb);
 usb_free_urb(kingsun->speed_urb);
 kingsun->speed_urb = ((void*)0);

 usb_kill_urb(kingsun->rx_urb);
 usb_free_urb(kingsun->rx_urb);
 kingsun->rx_urb = ((void*)0);

 kfree_skb(kingsun->rx_unwrap_buff.skb);
 kingsun->rx_unwrap_buff.skb = ((void*)0);
 kingsun->rx_unwrap_buff.head = ((void*)0);
 kingsun->rx_unwrap_buff.in_frame = FALSE;
 kingsun->rx_unwrap_buff.state = OUTSIDE_FRAME;
 kingsun->receiving = 0;


 irlap_close(kingsun->irlap);

 kingsun->irlap = ((void*)0);

 return 0;
}
