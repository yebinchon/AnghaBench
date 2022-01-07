
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct sk_buff {int data; scalar_t__ cb; void* dev; } ;
struct bfusb_data_scb {struct urb* urb; } ;
struct bfusb_data {int pending_q; TYPE_1__* hdev; int udev; int bulk_in_ep; } ;
struct TYPE_2__ {int name; } ;


 int BT_DBG (char*,struct bfusb_data*,struct urb*) ;
 int BT_ERR (char*,int ,struct urb*,int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int HCI_MAX_FRAME_SIZE ;
 int bfusb_rx_complete ;
 struct sk_buff* bt_skb_alloc (int,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_unlink (struct sk_buff*,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int,int ,int,int ,struct sk_buff*) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int bfusb_rx_submit(struct bfusb_data *data, struct urb *urb)
{
 struct bfusb_data_scb *scb;
 struct sk_buff *skb;
 int err, pipe, size = HCI_MAX_FRAME_SIZE + 32;

 BT_DBG("bfusb %p urb %p", data, urb);

 if (!urb && !(urb = usb_alloc_urb(0, GFP_ATOMIC)))
  return -ENOMEM;

 skb = bt_skb_alloc(size, GFP_ATOMIC);
 if (!skb) {
  usb_free_urb(urb);
  return -ENOMEM;
 }

 skb->dev = (void *) data;

 scb = (struct bfusb_data_scb *) skb->cb;
 scb->urb = urb;

 pipe = usb_rcvbulkpipe(data->udev, data->bulk_in_ep);

 usb_fill_bulk_urb(urb, data->udev, pipe, skb->data, size,
   bfusb_rx_complete, skb);

 skb_queue_tail(&data->pending_q, skb);

 err = usb_submit_urb(urb, GFP_ATOMIC);
 if (err) {
  BT_ERR("%s bulk rx submit failed urb %p err %d",
     data->hdev->name, urb, err);
  skb_unlink(skb, &data->pending_q);
  kfree_skb(skb);
  usb_free_urb(urb);
 }

 return err;
}
