
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_ctrlrequest {int wLength; int wValue; int wIndex; int bRequest; int bRequestType; } ;
struct urb {unsigned int pipe; int setup_packet; int transfer_buffer_length; int transfer_buffer; int transfer_flags; int interval; int complete; struct sk_buff* context; int dev; } ;
struct sk_buff {int len; int data; scalar_t__ dev; } ;
struct TYPE_9__ {int sco_tx; int acl_tx; int cmd_tx; } ;
struct TYPE_7__ {int acl_num; int sco_num; } ;
struct hci_dev {int name; TYPE_4__ stat; TYPE_2__ conn_hash; int flags; struct btusb_data* driver_data; } ;
struct btusb_data {int udev; int tx_anchor; int waker; int deferred; TYPE_3__* isoc_tx_ep; TYPE_1__* bulk_tx_ep; int cmdreq_type; } ;
struct TYPE_10__ {int pkt_type; } ;
struct TYPE_8__ {int wMaxPacketSize; int bInterval; int bEndpointAddress; } ;
struct TYPE_6__ {int bEndpointAddress; } ;


 int BTUSB_MAX_ISOC_FRAMES ;
 int BT_DBG (char*,int ) ;
 int BT_ERR (char*,int ,struct urb*) ;
 int EBUSY ;
 int EILSEQ ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;


 int HCI_RUNNING ;

 int URB_ISO_ASAP ;
 int __cpu_to_le16 (int ) ;
 int __fill_isoc_descriptor (struct urb*,int ,int ) ;
 TYPE_5__* bt_cb (struct sk_buff*) ;
 int btusb_isoc_tx_complete ;
 int btusb_tx_complete ;
 int inc_tx (struct btusb_data*) ;
 int kfree (int ) ;
 struct usb_ctrlrequest* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int schedule_work (int *) ;
 int test_bit (int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,unsigned int,int ,int ,int ,struct sk_buff*) ;
 int usb_fill_control_urb (struct urb*,int ,unsigned int,void*,int ,int ,int ,struct sk_buff*) ;
 int usb_free_urb (struct urb*) ;
 int usb_mark_last_busy (int ) ;
 unsigned int usb_sndbulkpipe (int ,int ) ;
 unsigned int usb_sndctrlpipe (int ,int) ;
 unsigned int usb_sndisocpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int btusb_send_frame(struct sk_buff *skb)
{
 struct hci_dev *hdev = (struct hci_dev *) skb->dev;
 struct btusb_data *data = hdev->driver_data;
 struct usb_ctrlrequest *dr;
 struct urb *urb;
 unsigned int pipe;
 int err;

 BT_DBG("%s", hdev->name);

 if (!test_bit(HCI_RUNNING, &hdev->flags))
  return -EBUSY;

 switch (bt_cb(skb)->pkt_type) {
 case 129:
  urb = usb_alloc_urb(0, GFP_ATOMIC);
  if (!urb)
   return -ENOMEM;

  dr = kmalloc(sizeof(*dr), GFP_ATOMIC);
  if (!dr) {
   usb_free_urb(urb);
   return -ENOMEM;
  }

  dr->bRequestType = data->cmdreq_type;
  dr->bRequest = 0;
  dr->wIndex = 0;
  dr->wValue = 0;
  dr->wLength = __cpu_to_le16(skb->len);

  pipe = usb_sndctrlpipe(data->udev, 0x00);

  usb_fill_control_urb(urb, data->udev, pipe, (void *) dr,
    skb->data, skb->len, btusb_tx_complete, skb);

  hdev->stat.cmd_tx++;
  break;

 case 130:
  if (!data->bulk_tx_ep || hdev->conn_hash.acl_num < 1)
   return -ENODEV;

  urb = usb_alloc_urb(0, GFP_ATOMIC);
  if (!urb)
   return -ENOMEM;

  pipe = usb_sndbulkpipe(data->udev,
     data->bulk_tx_ep->bEndpointAddress);

  usb_fill_bulk_urb(urb, data->udev, pipe,
    skb->data, skb->len, btusb_tx_complete, skb);

  hdev->stat.acl_tx++;
  break;

 case 128:
  if (!data->isoc_tx_ep || hdev->conn_hash.sco_num < 1)
   return -ENODEV;

  urb = usb_alloc_urb(BTUSB_MAX_ISOC_FRAMES, GFP_ATOMIC);
  if (!urb)
   return -ENOMEM;

  pipe = usb_sndisocpipe(data->udev,
     data->isoc_tx_ep->bEndpointAddress);

  urb->dev = data->udev;
  urb->pipe = pipe;
  urb->context = skb;
  urb->complete = btusb_isoc_tx_complete;
  urb->interval = data->isoc_tx_ep->bInterval;

  urb->transfer_flags = URB_ISO_ASAP;
  urb->transfer_buffer = skb->data;
  urb->transfer_buffer_length = skb->len;

  __fill_isoc_descriptor(urb, skb->len,
    le16_to_cpu(data->isoc_tx_ep->wMaxPacketSize));

  hdev->stat.sco_tx++;
  goto skip_waking;

 default:
  return -EILSEQ;
 }

 err = inc_tx(data);
 if (err) {
  usb_anchor_urb(urb, &data->deferred);
  schedule_work(&data->waker);
  err = 0;
  goto done;
 }

skip_waking:
 usb_anchor_urb(urb, &data->tx_anchor);

 err = usb_submit_urb(urb, GFP_ATOMIC);
 if (err < 0) {
  BT_ERR("%s urb %p submission failed", hdev->name, urb);
  kfree(urb->setup_packet);
  usb_unanchor_urb(urb);
 } else {
  usb_mark_last_busy(data->udev);
 }

 usb_free_urb(urb);

done:
 return err;
}
