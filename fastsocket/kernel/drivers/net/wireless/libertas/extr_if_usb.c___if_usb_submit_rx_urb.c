
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct if_usb_card {TYPE_2__* udev; struct sk_buff* rx_skb; TYPE_1__* rx_urb; int ep_in; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int transfer_flags; } ;


 int GFP_ATOMIC ;
 scalar_t__ IPFIELD_ALIGN_OFFSET ;
 int MRVDRV_ETH_RX_PACKET_BUFFER_SIZE ;
 int URB_ZERO_PACKET ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int lbs_deb_usb2 (int *,char*,...) ;
 int lbs_deb_usbd (int *,char*,int) ;
 int lbs_pr_err (char*) ;
 int usb_fill_bulk_urb (TYPE_1__*,TYPE_2__*,int ,scalar_t__,int ,void (*) (struct urb*),struct if_usb_card*) ;
 int usb_rcvbulkpipe (TYPE_2__*,int ) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int __if_usb_submit_rx_urb(struct if_usb_card *cardp,
      void (*callbackfn)(struct urb *urb))
{
 struct sk_buff *skb;
 int ret = -1;

 if (!(skb = dev_alloc_skb(MRVDRV_ETH_RX_PACKET_BUFFER_SIZE))) {
  lbs_pr_err("No free skb\n");
  goto rx_ret;
 }

 cardp->rx_skb = skb;


 usb_fill_bulk_urb(cardp->rx_urb, cardp->udev,
     usb_rcvbulkpipe(cardp->udev, cardp->ep_in),
     skb->data + IPFIELD_ALIGN_OFFSET,
     MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, callbackfn,
     cardp);

 cardp->rx_urb->transfer_flags |= URB_ZERO_PACKET;

 lbs_deb_usb2(&cardp->udev->dev, "Pointer for rx_urb %p\n", cardp->rx_urb);
 if ((ret = usb_submit_urb(cardp->rx_urb, GFP_ATOMIC))) {
  lbs_deb_usbd(&cardp->udev->dev, "Submit Rx URB failed: %d\n", ret);
  kfree_skb(skb);
  cardp->rx_skb = ((void*)0);
  ret = -1;
 } else {
  lbs_deb_usb2(&cardp->udev->dev, "Submit Rx URB success\n");
  ret = 0;
 }

rx_ret:
 return ret;
}
