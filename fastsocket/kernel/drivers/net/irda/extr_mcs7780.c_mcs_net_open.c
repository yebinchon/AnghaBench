
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_8__ {TYPE_5__* skb; int head; int truesize; } ;
struct mcs_cb {TYPE_1__ rx_buff; int irlap; int qos; TYPE_2__* usbdev; int rx_time; scalar_t__ receiving; int ep_out; int ep_in; } ;
struct TYPE_10__ {int data; } ;
struct TYPE_9__ {int devnum; } ;


 int ENOMEM ;
 int IRDA_ERROR (char*) ;
 int IRDA_SKB_MAX_MTU ;
 TYPE_5__* dev_alloc_skb (int ) ;
 int do_gettimeofday (int *) ;
 int irlap_close (int ) ;
 int irlap_open (struct net_device*,int *,char*) ;
 int kfree_skb (TYPE_5__*) ;
 int mcs_receive_start (struct mcs_cb*) ;
 int mcs_setup_transceiver (struct mcs_cb*) ;
 int mcs_setup_urbs (struct mcs_cb*) ;
 struct mcs_cb* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int skb_reserve (TYPE_5__*,int) ;
 int sprintf (char*,char*,int) ;
 int usb_clear_halt (TYPE_2__*,int ) ;
 int usb_rcvbulkpipe (TYPE_2__*,int ) ;
 int usb_sndbulkpipe (TYPE_2__*,int ) ;

__attribute__((used)) static int mcs_net_open(struct net_device *netdev)
{
 struct mcs_cb *mcs = netdev_priv(netdev);
 char hwname[16];
 int ret = 0;

 ret = usb_clear_halt(mcs->usbdev,
        usb_sndbulkpipe(mcs->usbdev, mcs->ep_in));
 if (ret)
  goto error1;
 ret = usb_clear_halt(mcs->usbdev,
        usb_rcvbulkpipe(mcs->usbdev, mcs->ep_out));
 if (ret)
  goto error1;

 ret = mcs_setup_transceiver(mcs);
 if (ret)
  goto error1;

 ret = -ENOMEM;


 mcs->receiving = 0;
 mcs->rx_buff.truesize = IRDA_SKB_MAX_MTU;
 mcs->rx_buff.skb = dev_alloc_skb(IRDA_SKB_MAX_MTU);
 if (!mcs->rx_buff.skb)
  goto error1;

 skb_reserve(mcs->rx_buff.skb, 1);
 mcs->rx_buff.head = mcs->rx_buff.skb->data;
 do_gettimeofday(&mcs->rx_time);






 sprintf(hwname, "usb#%d", mcs->usbdev->devnum);
 mcs->irlap = irlap_open(netdev, &mcs->qos, hwname);
 if (!mcs->irlap) {
  IRDA_ERROR("mcs7780: irlap_open failed\n");
  goto error2;
 }

 if (!mcs_setup_urbs(mcs))
 goto error3;

 ret = mcs_receive_start(mcs);
 if (ret)
  goto error3;

 netif_start_queue(netdev);
 return 0;

 error3:
  irlap_close(mcs->irlap);
 error2:
  kfree_skb(mcs->rx_buff.skb);
 error1:
  return ret;
}
