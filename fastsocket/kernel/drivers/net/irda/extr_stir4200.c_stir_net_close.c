
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int skb; } ;
struct stir_cb {int * irlap; TYPE_1__ rx_buff; int rx_urb; int io_buf; int fifo_status; int thread; } ;
struct net_device {int dummy; } ;


 int irlap_close (int *) ;
 int kfree (int ) ;
 int kfree_skb (int ) ;
 int kthread_stop (int ) ;
 struct stir_cb* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int stir_net_close(struct net_device *netdev)
{
 struct stir_cb *stir = netdev_priv(netdev);


 netif_stop_queue(netdev);


 kthread_stop(stir->thread);
 kfree(stir->fifo_status);


 usb_kill_urb(stir->rx_urb);

 kfree(stir->io_buf);
 usb_free_urb(stir->rx_urb);
 kfree_skb(stir->rx_buff.skb);


 if (stir->irlap)
  irlap_close(stir->irlap);

 stir->irlap = ((void*)0);

 return 0;
}
