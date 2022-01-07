
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct kaweth_device {int intf; int status; scalar_t__ opened; } ;


 int KAWETH_STATUS_CLOSING ;
 int kaweth_kill_urbs (struct kaweth_device*) ;
 struct kaweth_device* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int usb_autopm_enable (int ) ;

__attribute__((used)) static int kaweth_close(struct net_device *net)
{
 struct kaweth_device *kaweth = netdev_priv(net);

 netif_stop_queue(net);
 kaweth->opened = 0;

 kaweth->status |= KAWETH_STATUS_CLOSING;

 kaweth_kill_urbs(kaweth);

 kaweth->status &= ~KAWETH_STATUS_CLOSING;

 usb_autopm_enable(kaweth->intf);

 return 0;
}
