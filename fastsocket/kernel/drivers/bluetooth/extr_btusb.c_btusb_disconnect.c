
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct hci_dev {int dummy; } ;
struct btusb_data {struct usb_interface* isoc; struct usb_interface* intf; struct hci_dev* hdev; } ;


 int BT_DBG (char*,struct usb_interface*) ;
 int __hci_dev_hold (struct hci_dev*) ;
 int __hci_dev_put (struct hci_dev*) ;
 int btusb_driver ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_unregister_dev (struct hci_dev*) ;
 int usb_driver_release_interface (int *,struct usb_interface*) ;
 struct btusb_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void btusb_disconnect(struct usb_interface *intf)
{
 struct btusb_data *data = usb_get_intfdata(intf);
 struct hci_dev *hdev;

 BT_DBG("intf %p", intf);

 if (!data)
  return;

 hdev = data->hdev;

 __hci_dev_hold(hdev);

 usb_set_intfdata(data->intf, ((void*)0));

 if (data->isoc)
  usb_set_intfdata(data->isoc, ((void*)0));

 hci_unregister_dev(hdev);

 if (intf == data->isoc)
  usb_driver_release_interface(&btusb_driver, data->intf);
 else if (data->isoc)
  usb_driver_release_interface(&btusb_driver, data->isoc);

 __hci_dev_put(hdev);

 hci_free_dev(hdev);
}
