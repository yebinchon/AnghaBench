
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_ctrlrequest {int wLength; int wValue; int wIndex; int bRequest; int bRequestType; } ;
struct urb {int setup_packet; } ;
struct sk_buff {int len; int data; scalar_t__ dev; } ;
struct TYPE_3__ {int sco_tx; int acl_tx; int cmd_tx; } ;
struct hci_dev {int name; TYPE_1__ stat; int flags; struct bpa10x_data* driver_data; } ;
struct bpa10x_data {int tx_anchor; int udev; } ;
struct TYPE_4__ {int pkt_type; } ;


 int BT_DBG (char*,int ) ;
 int BT_ERR (char*,int ,struct urb*) ;
 int EBUSY ;
 int EILSEQ ;
 int ENOMEM ;
 int GFP_ATOMIC ;


 int HCI_RUNNING ;

 int USB_TYPE_VENDOR ;
 int __cpu_to_le16 (int ) ;
 int bpa10x_tx_complete ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 int kfree (int ) ;
 struct usb_ctrlrequest* kmalloc (int,int ) ;
 int* skb_push (struct sk_buff*,int) ;
 int test_bit (int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,unsigned int,int ,int ,int ,struct sk_buff*) ;
 int usb_fill_control_urb (struct urb*,int ,unsigned int,void*,int ,int ,int ,struct sk_buff*) ;
 int usb_free_urb (struct urb*) ;
 unsigned int usb_sndbulkpipe (int ,int) ;
 unsigned int usb_sndctrlpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int bpa10x_send_frame(struct sk_buff *skb)
{
 struct hci_dev *hdev = (struct hci_dev *) skb->dev;
 struct bpa10x_data *data = hdev->driver_data;
 struct usb_ctrlrequest *dr;
 struct urb *urb;
 unsigned int pipe;
 int err;

 BT_DBG("%s", hdev->name);

 if (!test_bit(HCI_RUNNING, &hdev->flags))
  return -EBUSY;

 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!urb)
  return -ENOMEM;


 *skb_push(skb, 1) = bt_cb(skb)->pkt_type;

 switch (bt_cb(skb)->pkt_type) {
 case 129:
  dr = kmalloc(sizeof(*dr), GFP_ATOMIC);
  if (!dr) {
   usb_free_urb(urb);
   return -ENOMEM;
  }

  dr->bRequestType = USB_TYPE_VENDOR;
  dr->bRequest = 0;
  dr->wIndex = 0;
  dr->wValue = 0;
  dr->wLength = __cpu_to_le16(skb->len);

  pipe = usb_sndctrlpipe(data->udev, 0x00);

  usb_fill_control_urb(urb, data->udev, pipe, (void *) dr,
    skb->data, skb->len, bpa10x_tx_complete, skb);

  hdev->stat.cmd_tx++;
  break;

 case 130:
  pipe = usb_sndbulkpipe(data->udev, 0x02);

  usb_fill_bulk_urb(urb, data->udev, pipe,
    skb->data, skb->len, bpa10x_tx_complete, skb);

  hdev->stat.acl_tx++;
  break;

 case 128:
  pipe = usb_sndbulkpipe(data->udev, 0x02);

  usb_fill_bulk_urb(urb, data->udev, pipe,
    skb->data, skb->len, bpa10x_tx_complete, skb);

  hdev->stat.sco_tx++;
  break;

 default:
  usb_free_urb(urb);
  return -EILSEQ;
 }

 usb_anchor_urb(urb, &data->tx_anchor);

 err = usb_submit_urb(urb, GFP_ATOMIC);
 if (err < 0) {
  BT_ERR("%s urb %p submission failed", hdev->name, urb);
  kfree(urb->setup_packet);
  usb_unanchor_urb(urb);
 }

 usb_free_urb(urb);

 return 0;
}
