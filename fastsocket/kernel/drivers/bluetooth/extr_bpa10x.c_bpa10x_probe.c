
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dev; TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct hci_dev {int quirks; int owner; int destruct; int send; int flush; int close; int open; struct bpa10x_data* driver_data; int type; } ;
struct bpa10x_data {struct hci_dev* hdev; int rx_anchor; int tx_anchor; int udev; } ;
struct TYPE_3__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int BT_DBG (char*,struct usb_interface*,struct usb_device_id const*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_QUIRK_NO_RESET ;
 int HCI_USB ;
 int SET_HCIDEV_DEV (struct hci_dev*,int *) ;
 int THIS_MODULE ;
 int bpa10x_close ;
 int bpa10x_destruct ;
 int bpa10x_flush ;
 int bpa10x_open ;
 int bpa10x_send_frame ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_register_dev (struct hci_dev*) ;
 int init_usb_anchor (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct bpa10x_data*) ;
 struct bpa10x_data* kzalloc (int,int ) ;
 int set_bit (int ,int *) ;
 int usb_set_intfdata (struct usb_interface*,struct bpa10x_data*) ;

__attribute__((used)) static int bpa10x_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 struct bpa10x_data *data;
 struct hci_dev *hdev;
 int err;

 BT_DBG("intf %p id %p", intf, id);

 if (intf->cur_altsetting->desc.bInterfaceNumber != 0)
  return -ENODEV;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->udev = interface_to_usbdev(intf);

 init_usb_anchor(&data->tx_anchor);
 init_usb_anchor(&data->rx_anchor);

 hdev = hci_alloc_dev();
 if (!hdev) {
  kfree(data);
  return -ENOMEM;
 }

 hdev->type = HCI_USB;
 hdev->driver_data = data;

 data->hdev = hdev;

 SET_HCIDEV_DEV(hdev, &intf->dev);

 hdev->open = bpa10x_open;
 hdev->close = bpa10x_close;
 hdev->flush = bpa10x_flush;
 hdev->send = bpa10x_send_frame;
 hdev->destruct = bpa10x_destruct;

 hdev->owner = THIS_MODULE;

 set_bit(HCI_QUIRK_NO_RESET, &hdev->quirks);

 err = hci_register_dev(hdev);
 if (err < 0) {
  hci_free_dev(hdev);
  kfree(data);
  return err;
 }

 usb_set_intfdata(intf, data);

 return 0;
}
