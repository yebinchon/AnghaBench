
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int actual_length; int transfer_buffer; int pipe; int status; struct hci_dev* context; } ;
struct TYPE_2__ {int err_rx; } ;
struct hci_dev {int name; TYPE_1__ stat; int flags; struct bpa10x_data* driver_data; } ;
struct bpa10x_data {int rx_anchor; } ;


 int BT_DBG (char*,int ,struct urb*,int ,int ) ;
 int BT_ERR (char*,int ,...) ;
 int GFP_ATOMIC ;
 int HCI_RUNNING ;
 scalar_t__ bpa10x_recv (struct hci_dev*,int ,int ,int ) ;
 int test_bit (int ,int *) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_pipebulk (int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static void bpa10x_rx_complete(struct urb *urb)
{
 struct hci_dev *hdev = urb->context;
 struct bpa10x_data *data = hdev->driver_data;
 int err;

 BT_DBG("%s urb %p status %d count %d", hdev->name,
     urb, urb->status, urb->actual_length);

 if (!test_bit(HCI_RUNNING, &hdev->flags))
  return;

 if (urb->status == 0) {
  if (bpa10x_recv(hdev, usb_pipebulk(urb->pipe),
      urb->transfer_buffer,
      urb->actual_length) < 0) {
   BT_ERR("%s corrupted event packet", hdev->name);
   hdev->stat.err_rx++;
  }
 }

 usb_anchor_urb(urb, &data->rx_anchor);

 err = usb_submit_urb(urb, GFP_ATOMIC);
 if (err < 0) {
  BT_ERR("%s urb %p failed to resubmit (%d)",
      hdev->name, urb, -err);
  usb_unanchor_urb(urb);
 }
}
