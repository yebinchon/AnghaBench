
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct hci_dev {int name; } ;
struct bfusb_data {struct hci_dev* hdev; } ;


 int BT_DBG (char*,struct usb_interface*) ;
 int BT_ERR (char*,int ) ;
 int bfusb_close (struct hci_dev*) ;
 int hci_free_dev (struct hci_dev*) ;
 scalar_t__ hci_unregister_dev (struct hci_dev*) ;
 struct bfusb_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void bfusb_disconnect(struct usb_interface *intf)
{
 struct bfusb_data *data = usb_get_intfdata(intf);
 struct hci_dev *hdev = data->hdev;

 BT_DBG("intf %p", intf);

 if (!hdev)
  return;

 usb_set_intfdata(intf, ((void*)0));

 bfusb_close(hdev);

 if (hci_unregister_dev(hdev) < 0)
  BT_ERR("Can't unregister HCI device %s", hdev->name);

 hci_free_dev(hdev);
}
