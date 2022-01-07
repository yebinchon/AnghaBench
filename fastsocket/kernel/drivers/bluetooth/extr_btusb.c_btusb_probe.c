
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {int dev; TYPE_3__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int driver_info; } ;
struct TYPE_8__ {int bcdDevice; } ;
struct usb_device {TYPE_4__ descriptor; } ;
struct sk_buff {int dummy; } ;
struct hci_dev {int driver_init; int quirks; int owner; int notify; int destruct; int send; int flush; int close; int open; struct btusb_data* driver_data; int type; } ;
struct btusb_data {int * isoc; struct usb_device* udev; int cmdreq_type; struct hci_dev* hdev; int deferred; int isoc_anchor; int bulk_anchor; int intr_anchor; int tx_anchor; int txlock; int waker; int work; int lock; struct usb_interface* intf; struct usb_endpoint_descriptor* bulk_rx_ep; struct usb_endpoint_descriptor* bulk_tx_ep; struct usb_endpoint_descriptor* intr_ep; } ;
typedef int cmd ;
struct TYPE_5__ {scalar_t__ bInterfaceNumber; int bNumEndpoints; } ;
struct TYPE_7__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;


 int BTUSB_BCM92035 ;
 int BTUSB_BROKEN_ISOC ;
 int BTUSB_CSR ;
 int BTUSB_DIGIANSWER ;
 int BTUSB_IGNORE ;
 int BTUSB_SNIFFER ;
 int BTUSB_WRONG_SCO_MTU ;
 int BT_DBG (char*,struct usb_interface*,struct usb_device_id const*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_QUIRK_FIXUP_BUFFER_SIZE ;
 int HCI_QUIRK_NO_RESET ;
 int HCI_QUIRK_RAW_DEVICE ;
 int HCI_USB ;
 int INIT_WORK (int *,int ) ;
 int SET_HCIDEV_DEV (struct hci_dev*,int *) ;
 int THIS_MODULE ;
 int USB_TYPE_CLASS ;
 int USB_TYPE_VENDOR ;
 int blacklist_table ;
 struct sk_buff* bt_skb_alloc (int,int ) ;
 int btusb_close ;
 int btusb_destruct ;
 int btusb_driver ;
 int btusb_flush ;
 int btusb_notify ;
 int btusb_open ;
 int btusb_send_frame ;
 int btusb_waker ;
 int btusb_work ;
 int disable_scofix ;
 scalar_t__ force_scofix ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_register_dev (struct hci_dev*) ;
 scalar_t__ ignore_csr ;
 scalar_t__ ignore_dga ;
 scalar_t__ ignore_sniffer ;
 int init_usb_anchor (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct btusb_data*) ;
 struct btusb_data* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,unsigned char*,int) ;
 int reset ;
 int set_bit (int ,int *) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_init (int *) ;
 int usb_driver_claim_interface (int *,int *,struct btusb_data*) ;
 scalar_t__ usb_endpoint_is_bulk_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_bulk_out (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_int_in (struct usb_endpoint_descriptor*) ;
 int * usb_ifnum_to_if (struct usb_device*,int) ;
 struct usb_device_id* usb_match_id (struct usb_interface*,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct btusb_data*) ;

__attribute__((used)) static int btusb_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct usb_endpoint_descriptor *ep_desc;
 struct btusb_data *data;
 struct hci_dev *hdev;
 int i, err;

 BT_DBG("intf %p id %p", intf, id);


 if (intf->cur_altsetting->desc.bInterfaceNumber != 0)
  return -ENODEV;

 if (!id->driver_info) {
  const struct usb_device_id *match;
  match = usb_match_id(intf, blacklist_table);
  if (match)
   id = match;
 }

 if (id->driver_info == BTUSB_IGNORE)
  return -ENODEV;

 if (ignore_dga && id->driver_info & BTUSB_DIGIANSWER)
  return -ENODEV;

 if (ignore_csr && id->driver_info & BTUSB_CSR)
  return -ENODEV;

 if (ignore_sniffer && id->driver_info & BTUSB_SNIFFER)
  return -ENODEV;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 for (i = 0; i < intf->cur_altsetting->desc.bNumEndpoints; i++) {
  ep_desc = &intf->cur_altsetting->endpoint[i].desc;

  if (!data->intr_ep && usb_endpoint_is_int_in(ep_desc)) {
   data->intr_ep = ep_desc;
   continue;
  }

  if (!data->bulk_tx_ep && usb_endpoint_is_bulk_out(ep_desc)) {
   data->bulk_tx_ep = ep_desc;
   continue;
  }

  if (!data->bulk_rx_ep && usb_endpoint_is_bulk_in(ep_desc)) {
   data->bulk_rx_ep = ep_desc;
   continue;
  }
 }

 if (!data->intr_ep || !data->bulk_tx_ep || !data->bulk_rx_ep) {
  kfree(data);
  return -ENODEV;
 }

 data->cmdreq_type = USB_TYPE_CLASS;

 data->udev = interface_to_usbdev(intf);
 data->intf = intf;

 spin_lock_init(&data->lock);

 INIT_WORK(&data->work, btusb_work);
 INIT_WORK(&data->waker, btusb_waker);
 spin_lock_init(&data->txlock);

 init_usb_anchor(&data->tx_anchor);
 init_usb_anchor(&data->intr_anchor);
 init_usb_anchor(&data->bulk_anchor);
 init_usb_anchor(&data->isoc_anchor);
 init_usb_anchor(&data->deferred);

 hdev = hci_alloc_dev();
 if (!hdev) {
  kfree(data);
  return -ENOMEM;
 }

 hdev->type = HCI_USB;
 hdev->driver_data = data;

 data->hdev = hdev;

 SET_HCIDEV_DEV(hdev, &intf->dev);

 hdev->open = btusb_open;
 hdev->close = btusb_close;
 hdev->flush = btusb_flush;
 hdev->send = btusb_send_frame;
 hdev->destruct = btusb_destruct;
 hdev->notify = btusb_notify;

 hdev->owner = THIS_MODULE;


 data->isoc = usb_ifnum_to_if(data->udev, 1);

 if (!reset)
  set_bit(HCI_QUIRK_NO_RESET, &hdev->quirks);

 if (force_scofix || id->driver_info & BTUSB_WRONG_SCO_MTU) {
  if (!disable_scofix)
   set_bit(HCI_QUIRK_FIXUP_BUFFER_SIZE, &hdev->quirks);
 }

 if (id->driver_info & BTUSB_BROKEN_ISOC)
  data->isoc = ((void*)0);

 if (id->driver_info & BTUSB_DIGIANSWER) {
  data->cmdreq_type = USB_TYPE_VENDOR;
  set_bit(HCI_QUIRK_NO_RESET, &hdev->quirks);
 }

 if (id->driver_info & BTUSB_CSR) {
  struct usb_device *udev = data->udev;


  if (le16_to_cpu(udev->descriptor.bcdDevice) < 0x117)
   set_bit(HCI_QUIRK_NO_RESET, &hdev->quirks);
 }

 if (id->driver_info & BTUSB_SNIFFER) {
  struct usb_device *udev = data->udev;


  if (le16_to_cpu(udev->descriptor.bcdDevice) > 0x997)
   set_bit(HCI_QUIRK_RAW_DEVICE, &hdev->quirks);

  data->isoc = ((void*)0);
 }

 if (id->driver_info & BTUSB_BCM92035) {
  unsigned char cmd[] = { 0x3b, 0xfc, 0x01, 0x00 };
  struct sk_buff *skb;

  skb = bt_skb_alloc(sizeof(cmd), GFP_KERNEL);
  if (skb) {
   memcpy(skb_put(skb, sizeof(cmd)), cmd, sizeof(cmd));
   skb_queue_tail(&hdev->driver_init, skb);
  }
 }

 if (data->isoc) {
  err = usb_driver_claim_interface(&btusb_driver,
       data->isoc, data);
  if (err < 0) {
   hci_free_dev(hdev);
   kfree(data);
   return err;
  }
 }

 err = hci_register_dev(hdev);
 if (err < 0) {
  hci_free_dev(hdev);
  kfree(data);
  return err;
 }

 usb_set_intfdata(intf, data);

 return 0;
}
