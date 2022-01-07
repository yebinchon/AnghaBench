
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int number_of_packets; scalar_t__ transfer_buffer; TYPE_1__* iso_frame_desc; int status; int actual_length; struct hci_dev* context; } ;
struct TYPE_4__ {unsigned int byte_rx; int err_rx; } ;
struct hci_dev {int name; TYPE_2__ stat; int flags; struct btusb_data* driver_data; } ;
struct btusb_data {int isoc_anchor; int flags; } ;
struct TYPE_3__ {unsigned int offset; unsigned int actual_length; scalar_t__ status; } ;


 int BTUSB_ISOC_RUNNING ;
 int BT_DBG (char*,int ,struct urb*,int ,int ) ;
 int BT_ERR (char*,int ,...) ;
 int GFP_ATOMIC ;
 int HCI_RUNNING ;
 int HCI_SCODATA_PKT ;
 scalar_t__ hci_recv_fragment (struct hci_dev*,int ,scalar_t__,unsigned int) ;
 int test_bit (int ,int *) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static void btusb_isoc_complete(struct urb *urb)
{
 struct hci_dev *hdev = urb->context;
 struct btusb_data *data = hdev->driver_data;
 int i, err;

 BT_DBG("%s urb %p status %d count %d", hdev->name,
     urb, urb->status, urb->actual_length);

 if (!test_bit(HCI_RUNNING, &hdev->flags))
  return;

 if (urb->status == 0) {
  for (i = 0; i < urb->number_of_packets; i++) {
   unsigned int offset = urb->iso_frame_desc[i].offset;
   unsigned int length = urb->iso_frame_desc[i].actual_length;

   if (urb->iso_frame_desc[i].status)
    continue;

   hdev->stat.byte_rx += length;

   if (hci_recv_fragment(hdev, HCI_SCODATA_PKT,
      urb->transfer_buffer + offset,
        length) < 0) {
    BT_ERR("%s corrupted SCO packet", hdev->name);
    hdev->stat.err_rx++;
   }
  }
 }

 if (!test_bit(BTUSB_ISOC_RUNNING, &data->flags))
  return;

 usb_anchor_urb(urb, &data->isoc_anchor);

 err = usb_submit_urb(urb, GFP_ATOMIC);
 if (err < 0) {
  BT_ERR("%s urb %p failed to resubmit (%d)",
      hdev->name, urb, -err);
  usb_unanchor_urb(urb);
 }
}
