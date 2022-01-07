
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_flags; } ;
struct hci_dev {int name; struct bpa10x_data* driver_data; } ;
struct bpa10x_data {int rx_anchor; int udev; } ;


 int BT_DBG (char*,int ) ;
 int BT_ERR (char*,int ,struct urb*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int URB_FREE_BUFFER ;
 int bpa10x_rx_complete ;
 unsigned char* kmalloc (int,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_int_urb (struct urb*,int ,unsigned int,unsigned char*,int,int ,struct hci_dev*,int) ;
 int usb_free_urb (struct urb*) ;
 unsigned int usb_rcvintpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static inline int bpa10x_submit_intr_urb(struct hci_dev *hdev)
{
 struct bpa10x_data *data = hdev->driver_data;
 struct urb *urb;
 unsigned char *buf;
 unsigned int pipe;
 int err, size = 16;

 BT_DBG("%s", hdev->name);

 urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!urb)
  return -ENOMEM;

 buf = kmalloc(size, GFP_KERNEL);
 if (!buf) {
  usb_free_urb(urb);
  return -ENOMEM;
 }

 pipe = usb_rcvintpipe(data->udev, 0x81);

 usb_fill_int_urb(urb, data->udev, pipe, buf, size,
      bpa10x_rx_complete, hdev, 1);

 urb->transfer_flags |= URB_FREE_BUFFER;

 usb_anchor_urb(urb, &data->rx_anchor);

 err = usb_submit_urb(urb, GFP_KERNEL);
 if (err < 0) {
  BT_ERR("%s urb %p submission failed (%d)",
      hdev->name, urb, -err);
  usb_unanchor_urb(urb);
 }

 usb_free_urb(urb);

 return err;
}
